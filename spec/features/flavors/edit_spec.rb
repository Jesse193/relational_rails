require "rails_helper"
RSpec.describe "flavors can be edited" do
  # As a visitor
  # When I visit a Flavor Show page
  # Then I see a link to update that Flavor "Update Flavor"
  # When I click the link
  # I am taken to '/flavors/:id/edit' where I see a form to edit the flavor's attributes:
  # When I click the button to submit the form "Update Flavor"
  # Then a `PATCH` request is sent to '/flavors/:id',
  # the flavors's data is updated,
  # and I am redirected to the Flavor Show page where I see the Flavor's updated information
  it "can link to flavor eidit page" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/flavors/#{flavor.id}"
    click_link "Update Flavor"
    expect(current_path).to eq("/flavors/#{flavor.id}/edit")
  end
  it "can edit the flavor" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/flavors/#{flavor.id}/edit"
    fill_in "Flavor", with: "Chocolate Chip"
    fill_in "nut_free", with: true
    fill_in "calories", with: 590
    click_button "Update Flavor"

    expect(current_path).to eq("/flavors/#{flavor.id}")
    expect(page).to have_content("Chocolate Chip")
  end
  # As a visitor
  # When I visit the `flavors` index page or a shops `flavors` index page
  # Next to every child, I see a link to edit that flaovr's info
  # When I click the link
  # I should be taken to that `flavors` edit page where I can update its information
  it "links to flavor edit page" do
    shop = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
    flavor = shop.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
    visit "/flavors"
    click_link "Update Flavor"
  end

end 