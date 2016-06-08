class DutchiesController < ApplicationController

  def index
    @dutchies = User.where(kind: "dutchie")
  end

  def show
    @dutchie = User.find(params[:id])
  end

end
# test
