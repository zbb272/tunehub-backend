class Api::V1::ProjectsController < ApplicationController
  before_action :find_project, only: [:update]
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

  private

  def project_params
    params.permit(:user_id, :name)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
