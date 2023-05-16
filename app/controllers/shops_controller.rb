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
    Shop.create(shop_params)
    redirect_to "/shops"
  end
  

  private
    def shop_params
      params.permit(:id, :name, :hours, :open_year_round, :established)
    end
end