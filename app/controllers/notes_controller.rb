class NotesController < ApplicationController
  before_action :set_scope, only: %i[index new create]
  before_action :load_foo, only: %i[create]
  after_action :save_foo, only: %i[new] 

  def index
    @notes = Note.where champion_id: @champion_id, adversary_champion_id: @adversary_champion_id
  end

  def new
    @note = Note.new(champion_id: @champion_id, adversary_champion_id: @adversary_champion_id)
  end

  def create
    note_params[:adversary_champion_id] = @adversary_champion_id
    @note = Note.new(note_params)
    @note.save
    redirect_to champion_notes_path(champion_id: @champion_id, adversary_champion_id: @adversary_champion_id)
  end

  private
  def set_scope
    @champion_id = params[:champion_id]
    @adversary_champion_id = params[:adversary_champion_id]
  end

  def load_foo
    @adversary_champion_id = session[:adversary_champion_id] || 0
  end

  def save_foo
    session[:adversary_champion_id] = @adversary_champion_id
  end

  def note_params
    params.require(:note).permit(:champion_id, :adversary_champion_id, :body)
  end
end