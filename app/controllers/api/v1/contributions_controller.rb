class Api::V1::ContributionsController < ApplicationController
  before_action :find_contribution, only: [:update, :show]
  def index
    @contributions = Contribution.all
    render json: @contributions
  end

  def update
    @contribution.update(contribution_params)
    if @contribution.save
      render json: @contribution, status: :accepted
    else
      render json: { errors: @contribution.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    c = Contribution.create(contribution_params)
    render json: c
  end

  def show
    render json: @contribution
  end

  private

  def contribution_params
    params.permit(:user_id, :project_id, :message, :approved, :pending, notes_attributes: [:id, :x, :y, :contribution_id, :bc, :selected, :frequency])
  end

  def find_contribution
    @contribution = Contribution.find(params[:id])
  end
end
