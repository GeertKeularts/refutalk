class ProfileController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path(current_user[:id])
    else
      render "edit"
    end
  end


  private
  def find_user
    @user = User.find(current_user[:id])
  end

  def user_params
    params.require(:user).permit(:id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at,
     :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :kind, :username, :photo, :description)
  end
end
