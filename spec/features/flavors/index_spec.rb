require "rails_helper"

RSpec.describe "flavors index page" do
  # As a visitor
  # When I visit '/flavors_table'
  # Then I see each Flavor in the system including the Flavor's attributes
  # (data from each column that is on the flavor table)
  it "can display shop's ice cream flavor's" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/shops/#{shop.id}/flavors"
    expect(page).to have_content(flavor.flavor)
  end
  # As a visitor
  # When I visit '/shops/:shop_id/flavors_table
  # Then I see each Flavor that is associated with that Shop with each Flavor's attributes
  it "can display name of shop for flavor" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor_1 = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/shops/#{shop.id}/flavors"
    expect(page).to have_content(flavor_1.flavor)
  end
  # As a visitor
  # When I visit any page on the site
  # Then I see a link at the top of the page that takes me to the Flavor Index
  it "can link to flavor index" do
    visit "/"
    click_link "All Flavors"
    expect(current_path).to eq("/flavors")
  end
end