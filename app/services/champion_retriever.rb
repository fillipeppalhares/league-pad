class ChampionRetriever < ApplicationService
  def initialize
    @url = "https://ddragon.leagueoflegends.com/cdn/12.8.1/data/en_US/champion.json"
    @response = HTTParty.get(@url)
    @data = @response["data"]
  end

  def call
    @data.map do |key, value|
      champion_name = value["name"]
      champion_tags = value["tags"]
      content = {name: champion_name, tags: champion_tags}
      Champion.create!(content)
    end
  end
end