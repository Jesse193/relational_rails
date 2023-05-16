require "rails_helper"

describe Shop, type: :model do
   describe "validations" do
      it {should have_many(:flavors)}
   end
   # As a visitor
   # When I visit the shop's flavor Index Page
   # Then I see a link to sort flavor in alphabetical order
   # When I click on the link
   # I'm taken back to the shop's flavor Index Page where I see all of the shop's flavors in alphabetical order
   it "sorts flavors alphabetically" do
      shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
      flavor = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
      flavor2 = shop.flavors.create!(flavor: "Almond", nut_free: false, calories: 600)
      visit "/shops/#{shop.id}/flavors"
      click_link "Sort Flavors"
      expect(shop.sort_by_alphabetical).to eq([flavor2, flavor])
   end
end