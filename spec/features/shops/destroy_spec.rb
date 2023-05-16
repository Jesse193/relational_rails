require "rails_helper"

RSpec.describe "delte shops" do
  # As a visitor
  # When I visit a shop show page
  # Then I see a link to delete the shop
  # When I click the link "Delete Shop"
  # Then a 'DELETE' request is sent to '/shops/:id',
  # the shop is deleted, and all flavors records are deleted
  # and I am redirected to the shop index page where I no longer see this shop  
  it "can delete shops" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor_1 = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)

    visit "/shops/#{shop.id}"
    click_link "Delete Shop"
    expect(current_path).to eq("/shops/#{shop.id}")
    expect(page).to_not have_content(shop)

  end
end

