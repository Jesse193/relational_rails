# As a visitor
  # When I visit Shop flavors Index page
  # Then I see a link to add a new adoptable flavor for that parent "Create Flavor"
  # When I click the link
  # I am taken to '/shops/:shop_id/flavors/new' where I see a form to add a new adoptable child
  # When I fill in the form with the flavor's attributes:
  # And I click the button "Create Flavor"
  # Then a `POST` request is sent to '/shops/:shop_id/flavors',
  # a new flavor object/row is created for that parent,
  # and I am redirected to the Shop Flavors Index page where I can see the new flavor listed
require "rails_helper"
RSpec.describe "New flavor" do
  it "can link to new flavor page" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    visit "/shops/#{shop.id}/flavors"

    click_link "Create Flavor"

    expect(current_path).to eq("/shops/#{shop.id}/flavors/new")
  end

  it "can create new flavor" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    visit "/shops/#{shop.id}/flavors/new"

    fill_in("Flavor", with: "Coffee")
    fill_in("nut_free", with: true)
    fill_in("Calories", with: 560)
    click_button("Create Flavor")

    expect(current_path).to eq("/shops/#{shop.id}/flavors")
    expect(page).to have_content("Coffee")
  end
end