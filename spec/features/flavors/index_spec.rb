require "rails_helper"

RSpec.describe "flavors index page" do
  # As a visitor
  # When I visit '/flavors_table'
  # Then I see each Flavor in the system including the Flavor's attributes
  # (data from each column that is on the flavor table)
  it "can display shop's ice cream flavor's" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true)
    flavor_1 = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "shops/:shop_id/flavors"
    expect(page).to have_content(flavor_1.flavor)
  end
end