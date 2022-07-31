# frozen_string_literal: true

class TagRetriever < ApplicationService
  def initialize
    @url = "https://ddragon.leagueoflegends.com/cdn/12.14.1/data/en_US/champion.json"
    @response = HTTParty.get(@url)
    @data = @response["data"]
  end

  def call
    retrieve_tags_from_all_champions().reduce(:+).uniq
  end

  private

  def retrieve_tags_from_all_champions
    @data.map do |key, value|
      value["tags"]
    end
  end
end