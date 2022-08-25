class SessionsController < ApplicationController
  def create

    # byebug
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :ok
    else
      render json: {errors: "Not valid entry"}, status: :unauthorized
    end

  end

  def destroy
  end
end
