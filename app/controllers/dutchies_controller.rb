class DutchiesController < ApplicationController

  def index
    @dutchies = User.where(kind: "dutchie")
  end
end
# test
