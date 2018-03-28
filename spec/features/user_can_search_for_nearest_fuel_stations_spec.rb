require 'rails_helper'

describe "As a user" do
  describe "When I visit the root path and fill in my zip code" do
    it "sends me a list of nearest electric and propane stations within 6 miles sorted by distance with name, address, fuel types, distance and access times" do
      visit root_path

      fill_in :q, with: "80211"
      click_on "Locate"

      expect(page).to have_content("Stations:")
      within(first(".station")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".address")
        expect(page).to have_css(".fuel-type")
        expect(page).to have_css(".distance")
        expect(page).to have_css(".access-times")
      end
    end
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
