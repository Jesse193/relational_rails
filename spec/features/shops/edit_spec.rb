# As a visitor
# When I visit a shop show page
# Then I see a link to update the shop "Update Shop"
# When I click the link "Update Shop"
# Then I am taken to '/shops/:id/edit' where I  see a form to edit the shop's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/shops/:id',
# the shop's info is updated,
# and I am redirected to the Shop's Show page where I see the shop's updated info

require "rails_helper"
RSpec.describe "edit shop" do
  it "can link to edit page" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)

    visit "/shops/#{shop.id}"
    click_link "Update Shop"
    expect(current_path).to eq("/shops/#{shop.id}/edit")
  end
  it "can edit shop details" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    visit "/shops/#{shop.id}/edit"
    fill_in "Name", with: "North Pole Ice Cream"
    fill_in "Hours", with: "12:00 - 21:00"
    fill_in "open_year_round", with: true
    fill_in "Established", with: 1980
    click_button "Update Shop"

    expect(current_path).to eq("/shops/#{shop.id}")
    expect(page).to have_content("North Pole Ice Cream")
  end

end

