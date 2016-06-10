class OffersController < ApplicationController
  before_action :find_dutchie, only: [:new, :create]
  before_action :find_user, only: [:new, :create]

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
    end
  end


  private

  def find_dutchie
    @dutchie = User.find(params[:dutchy_id])
  end

   def find_user
    @user = User.find(current_user[:id]) if current_user
  end

  def offer_params
    params.require(:request).permit(:message)
  end


end
