class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :show]
  def index
    @users = User.all
    render json: @users
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    render json: User.create(user_params)
  end

  def show
    render json: @user
  end

  private

  def user_params
    params.permit(:username, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
