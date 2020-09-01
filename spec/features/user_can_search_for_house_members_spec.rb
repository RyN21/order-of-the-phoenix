require 'rails_helper'

RSpec.describe "User can search by house for members" do
  it "can search" do
    visit '/'

    select "Gryffindor"

    click_on "Search For Members"

    expect(current_path).to eq('/search')

    expect(page).to have_content("Total number of the phoenix members that belong to Gryffindor: 21")

    within(first(".house-members")) do
      expect(page).to have_content("Name")
      expect(page).to have_content("Role")
      expect(page).to have_content("Gryffindor")
      expect(page).to have_content("Patronus")
    end
  end
end
