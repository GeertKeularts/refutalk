class DutchiesController < ApplicationController
  before_action :find_user, only: :show

  def index
    @dutchies = User.where(kind: "dutchie")
  end

  def show
    @dutchie = User.find(params[:id])
  end

  private
  def find_user
    @user = User.find(current_user[:id])
  end

end
# test
