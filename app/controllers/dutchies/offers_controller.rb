class Dutchies::OffersController < ApplicationController


  def index
    @offers = Request.where(dutchy_id: current_user[:id])
  end

  def accept
    @offer = Request.find(params[:id])
    @offer.update(status: "accepted")
    redirect_to dutchies_offers_path
  end

  def refuse
    @offer = Request.find(params[:id])
    @offer.update(status: "refused")
    redirect_to dutchies_offers_path
  end
end
