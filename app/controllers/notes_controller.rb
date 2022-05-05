class NotesController < ApplicationController
  def index
    @params = params
  end

  def new
    @note = Note.new
  end

  def create
  end

  private
end