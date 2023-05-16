require "rails_helper"

describe Flavor, type: :model do
  describe "relationships" do
    it {should belong_to(:shop)}
  end
  # As a visitor
  # When I visit the flavor index
  # Then I only see records where the boolean column is `true`
  describe "only true" do
    it "only shows flavors that are true" do
      shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
      flavor = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
      flavor2 = shop.flavors.create!(flavor: "Chocolate Almond", nut_free: false, calories: 600)
      expect(Flavor.only_true).to eq([flavor])
    end
  end
end