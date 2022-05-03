class ChampionsController < ApplicationController
  before_action :set_champion, only: %i[ show ]

  def index
    @champions = Champion.all
  end

  def show
    @champions = Champion.where.not(id: @champion.id)
  end

  private

  def set_champion
    @champion = Champion.find(params[:id])
  end
end