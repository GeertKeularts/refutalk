class PagesController < ApplicationController
  def home
    @dutchies = User.where(kind: "dutchie")
  end
end
