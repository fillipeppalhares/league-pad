# frozen_string_literal: true

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
      champion_image_name = value["image"]["full"]
      content = {name: champion_name, tags: champion_tags, image_name: champion_image_name}
      Champion.create!(content)
    end
  end
end