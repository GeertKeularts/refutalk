class OffersController < ApplicationController
  before_action :find_dutchie, only: [:new, :create]

  def new
    @offer = Request.new
  end

  def create
    @offer = Request.new(offer_params)
    @offer.dutchy_id = params[:dutchy_id]
    @offer.refugee_id = current_user[:id]
    @offer.status = "pending"
    if  @offer.save
      redirect_to refugees_requests_path()
    else
      render :new
      # new_dutchy_offer_path(@dutchie, @offer)
    end
  end


  private

  def find_dutchie
    @dutchie = User.find(params[:dutchy_id]) if current_user
  end

  def offer_params
    params.require(:request).permit(:message)
  end


end
