class Api::V1::ContributionsController < ApplicationController
  before_action :find_contribution, only: [:update]
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

  private

  def contribution_params
    params.permit(:user_id, :project_id)
  end

  def find_contribution
    @contribution = Contribution.find(params[:id])
  end
end
