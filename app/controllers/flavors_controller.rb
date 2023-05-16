class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find(params[:id])
  end

  def edit
    @flavor = Flavor.find(params[:id])
  end

  def update
    flavor = Flavor.find(params[:id])
    flavor.update(flavor_params)
    flavor.save
    redirect_to "/flavors/#{flavor.id}"
  end

  private
    def flavor_params
      params.permit(:flavor, :id, :nut_free, :calories, :shop_id)
    end
end