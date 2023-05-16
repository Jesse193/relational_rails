require "rails_helper"

RSpec.describe "shops index page" do
  # For each shop table
  # As a visitor
  # When I visit '/shops'
  # Then I see the name of each shop record in the system
  it "can display all shop names" do
    shop_1 = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    shop_2 = Shop.create!(name: "Ice Caps", hours: "12:00 - 22:00", open_year_round: false, established: 1990)
    visit "/shops"
    expect(page).to have_content(shop_1.name)
    expect(page).to have_content(shop_2.name)
  end
end