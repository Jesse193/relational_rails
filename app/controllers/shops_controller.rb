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

  def new
  end

  def create
    Shop.create!(shop_params)
    redirect_to "/shops"
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    shop.save
    redirect_to "/shops/#{shop.id}"
  end
  

  private
    def shop_params
      params.permit(:id, :name, :hours, :open_year_round, :established)
    end
end