class UsersImagesController < ApplicationController
  before_action :authenticate_user!

  def_update
    if current_user.update(user_params)
      render json: current_user, serializer: CurrentUserSerializer, status: 200
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  def user_params
    params.permit(:avatar, :username, :email)
  end
end
