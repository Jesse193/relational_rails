# As a visitor
# When I visit '/shops/:shop_id/flavors'
# Then I see each Flavor that is associated with that Shop with each flavor's attributes
# (data from each column that is on the child table)

require "rails_helper"

RSpec.describe "shop flavors" do
  it "Can display shop's flavors" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor_1 = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/shops/#{shop.id}/flavors"

    expect(page).to have_content(flavor_1.flavor)
    expect(page).to have_content(flavor_1.calories)
    expect(page).to have_content(flavor_1.nut_free)
  end
end