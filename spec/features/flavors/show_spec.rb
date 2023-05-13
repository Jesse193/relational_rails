# require "rails_helper"

RSpec.describe "flavors index page" do
  # As a visitor
  # When I visit '/flavors_table/:id'
  # Then I see the flavor with that id including the flavor's attributes
  # (data from each column that is on the child table)
  it "can display shop's ice cream flavor's attributes" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true)
    flavor_1 = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/flavors/#{flavor_1.id}"
    expect(page).to have_content(flavor_1.nut_free)
    expect(page).to have_content(flavor_1.calories)
  end
end