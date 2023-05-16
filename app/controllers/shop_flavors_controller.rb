class ShopFlavorsController < ApplicationController
  def index
    @shop = Shop.find(params[:shop_id])
    @flavors = @shop.flavors
  end

  def new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @shop.flavors.create!(flavor_params)
    redirect_to "/shops/#{@shop.id}/flavors"
  end

  private
    def flavor_params
      params.permit(:flavor, :nut_free, :calories)
    end
end