require "spec_helper"

feature "user sees a list of favorite things" do
  scenario "user views favorites" do
    CSV.open("bucket_list.csv", "a", headers: true) do |file|
      thing = "Get my first dev job!"
      file.puts([thing])
    end

    visit "/bucket-list"
    expect(page).to have_content("Get my first dev job!")
  end

  scenario "user sees all bucket list goals at root path" do
    CSV.open("bucket_list.csv", "a", headers: true) do |file|
      thing = "Get published in Rattle magazine"
      file.puts([thing])
    end
    visit "/"
    expect(page).to have_content("Get published in Rattle magazine")
  end
end
