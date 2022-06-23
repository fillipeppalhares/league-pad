class ChampionsController < ApplicationController
  before_action :set_champion, only: %i[show]

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



# você cadastra um plano de jogo do seu campeão contra o campeão adversário ao estilo skillcapped
# ao fim do jogo, fala se venceu a partida / usa api do lol para saber se venceu
# lista de planos de jogo contra aquele campeão com estatísticas
# no futuro, olha as estatísticas do jogo (?)
