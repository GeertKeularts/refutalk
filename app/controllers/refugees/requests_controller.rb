class Refugees::RequestsController < ApplicationController
  before_action :find_user, only: :index

  def index
      @requests = @user.requests.reverse
  end

  private

  def find_user
    @user = User.find(current_user[:id])
  end
end
