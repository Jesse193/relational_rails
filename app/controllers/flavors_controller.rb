class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end
end