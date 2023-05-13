class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    @shops = @shops.order("created_at DESC")
    @flavors = Flavor.all
  end

  def show
    @shop = Shop.find(params[:id])
    @flavors = Flavor.all
  end
end