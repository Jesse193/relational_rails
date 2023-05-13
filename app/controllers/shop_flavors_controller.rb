class ShopFlavorsController < ApplicationController
  def index
    shop = Shop.find(params[:shop_id])
    @flavors = shop.flavors
  end
end