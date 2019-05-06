class Api::V1::ProjectsController < ApplicationController
  before_action :find_project, only: [:update, :show]
  def index
    @projects = Project.all
    render json: @projects
  end

  def update
    @project.update(project_params)
    if @project.save
      render json: @project, status: :accepted
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @project
  end

  def create
    p = Project.create(project_params)
    p.contributions << Contribution.create(user_id: p.user_id, approved: true, message: "created")
    p.latest_contribution = p.contributions[0].id
    p.save
    render json: p
  end

  private

  def project_params
    params.permit(:user_id, :name, :latest_contribution, contributions_attributes: [:id, :user_id, :project_id, :message, :approved])
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
