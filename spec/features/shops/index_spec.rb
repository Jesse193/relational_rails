require "rails_helper"

RSpec.describe "shops index page", type: :feature do
  # For each shop table
  # As a visitor
  # When I visit '/shops'
  # Then I see the name of each shop record in the system
  it "can display all shop names" do
    shop1 = Shop.create(name: "North Pole Creamery", hours: 1100/2000, open_year_round: true)
    shop2 = Shop.create(name: "Ice Caps", hours: 1200/2200, open_year_round: false)
    visit "/shops/#{shop1.name}"
    visit "/shops/#{shop2.name}"
    expect(page).to have_content(shop1.name)
    expect(page).to have_content(shop2.name)
  end
end