class ApiRetriever < ApplicationService
  include HTTParty

  def initialize(url)
    @url = url
  end

  def call
    retrieve
  rescue ApiRetrieverError => e
    e
  end

  private

  def retrieve
    response = self.class.get(@url)
    raise ApiRetrieverError.new(response.response.message, response.code, response.request.path) if response.code != 200
  end
end
