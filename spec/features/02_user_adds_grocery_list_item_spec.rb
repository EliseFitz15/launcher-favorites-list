require "spec_helper"

feature "user adds a bucket list goal" do
  scenario "when valid form submitted" do
    visit "/bucket-list"

    fill_in "Add New Favorite Thing", with: "Complete yoga teacher training"
    click_on "Add"

    expect(page).to have_content("Complete yoga teacher training")
  end

  scenario "when not valid submission empty li element is not added to the page" do
    visit "/bucket-list"
    click_on "Add"

    expect(page).not_to have_selector("li")
  end
end
