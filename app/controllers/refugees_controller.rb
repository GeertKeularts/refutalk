class RefugeesController < ApplicationController
  before_action :find_user, only: :show

  def show
    @refugee = User.find(params[:id])
    @offer = Request.find_by(dutchy_id: @user.id, refugee_id: @refugee.id)
  end

  private

  def find_user
    @user = User.find(current_user[:id]) if current_user
  end
end
