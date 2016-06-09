class DutchiesController < ApplicationController

  def index
    @dutchies = User.where(kind: "dutchie")
  end

  def show
    if params[:id] == 'offers'
      raise 'nee!'
      redirect_to dutchies_offers_path()
    else
      @dutchie = User.find(params[:id])
    end

  end
end
