class ProfileController < ApplicationController


  def show
    @person = User.find(current_user[:id])
  end

  def edit
  end

  def update
  end
end
