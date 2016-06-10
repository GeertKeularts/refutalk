class Dutchies::OffersController < ApplicationController
  before_action :find_user, only: :index

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

  private

  def find_user
    @user = User.find(current_user[:id]) if current_user
  end


end
