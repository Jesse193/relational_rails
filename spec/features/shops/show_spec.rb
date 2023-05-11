# require "rails_helper"
# RSpec.describe "shops shops attributes" do

#   # As a visitor
#   # When I visit '/shops/:id'
#   # Then I see the parent with that id including the parent's attributes
#   it "can display all shop id and attributes" do
#     shop_1 = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 20:00", open_year_round: true, established: 1980)
#     shop_2 = Shop.create!(name: "Ice Caps", hours: "12:00 - 22:00", open_year_round: false, established: 1993)
#     visit "/shops/#{shop_1.id}"
#     visit "/shops/#{shop_2.id}"
#     expect(page).to have_content(shop_1.hours)
#   end
# end