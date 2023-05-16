# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.

require "rails_helper"

RSpec.describe "new shop" do
  describe "As a visitor" do
    describe 'When I visit the new shop form by clicking a link on the index' do
      it "can create a new shop" do
        visit "/shops"
        click_link "New Shop"
        expect(current_path).to eq("/shops/new")

        fill_in("Name", with: "Scoops")
        click_button("Create Shop")

        expect(current_path).to eq("/shops")
        expect(page).to have_content("Scoops")
      end
    end
  end
end