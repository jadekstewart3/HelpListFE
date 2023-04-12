require "rails_helper"

describe "application.html.erb" do
  it "has a title and tagline" do
    visit root_path

    expect(page).to have_title("HelpList")
    expect(page).to have_content("Helping Humans Help Humans")
  end

  it "has a nav bar with link for the home, dashboard, and wishlist" do
    visit root_path

    expect(page).to have_link("Home")
    expect(page).to have_link("Dashboard")
    expect(page).to have_link("Wishlist")
  end
end