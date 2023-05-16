class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find(params[:id])
  end

  private
    def flavor_params
      params.permit(:flavor, :id, :nut_free, :calories, :shop_id)
    end
end