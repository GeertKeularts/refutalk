class Dutchies::OffersController < ApplicationController

@dutchies = User.where(kind: "dutchie")
  def index
    @offers = Request.where(dutchy_id: current_user[:id])

  end
end
