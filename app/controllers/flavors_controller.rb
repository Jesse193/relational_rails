class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find(params[:id])
  end
end