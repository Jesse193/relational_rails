require "rails_helper"
RSpec.describe "shops shops attributes", type: :feature do

  # As a visitor
  # When I visit '/shops/:id'
  # Then I see the parent with that id including the parent's attributes
  it "can display all shop id and attributes" do
    shop_1 = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 20:00", open_year_round: true, established: 1980)
    visit "/shops/#{shop_1.id}"
    expect(page).to have_content(shop_1.hours)
    expect(page).to have_content(shop_1.open_year_round)
    expect(page).to have_content(shop_1.established)

    shop_2 = Shop.create!(name: "Ice Caps", hours: "12:00 - 22:00", open_year_round: false, established: 1993)
    visit "/shops/#{shop_2.id}"
    expect(page).to have_content(shop_2.hours)
    expect(page).to have_content(shop_2.open_year_round)
    expect(page).to have_content(shop_2.established)
  end
  # As a visitor
  # When I visit the shop's show page
  # I see a count of the number of flavors associated with this shop
  it "can display number of shop flavors" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 20:00", open_year_round: true, established: 1980)
    flavor_1 = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    flavor_2 = shop.flavors.create!(flavor: "Vanilla", nut_free: true, calories: 580)

    visit "/shops/#{shop.id}"

    expect(page).to have_content(shop.flavors.count)
  end
end