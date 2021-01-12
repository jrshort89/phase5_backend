class UsersController < ApplicationController

  skip_before_action :authenticate_user, only: [:create]

  def create
    @user = User.new(user_params)
    if !@user.save
      return render json: {status: "error", message: "#{user_params[:username]} is taken. Please choose another username. Be creative. Be be creative. (cheerleader chant)"}
    end
    @token = encode_jwt(@user.id)
    render json: {user: @user.username, jwt: @token}, status: :created
  end

  def update
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password)
  end
end
