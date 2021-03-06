class Api::V1::NotesController < ApplicationController
  before_action :find_note, only: [:update]
  def index
    @notes = Note.all
    render json: @notes
  end

  def update
    @note.update(note_params)
    if @note.save
      render json: @note, status: :accepted
    else
      render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    render json: Note.create(note_params)
  end

  private

  def note_params
    params.permit(:x, :y, :contribution_id, :frequency, :selected, :bc)
  end

  def find_note
    @note = Note.find(params[:id])
  end
end
