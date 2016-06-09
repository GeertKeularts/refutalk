class Dutchies::OffersController < ApplicationController


  def index
    @offers = Request.where(dutchy_id: current_user[:id])

  end
end
