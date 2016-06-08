class OffersController < ApplicationController
  before_action :find_dutchie, only: [:new, :create]

  def new
    @offer = Request.new
  end

  def create
    redirect_to dutchies_path
  end


  private

  def find_dutchie
    @dutchie = User.find(params[:dutchy_id])
  end

  def offer_params
    params.require(:request).permit(:message)
  end


end
