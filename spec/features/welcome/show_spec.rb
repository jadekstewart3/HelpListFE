require "rails_helper"

RSpec.describe "Welcome Page" do
  before :each do 
    visit root_path
  end
  describe "As a visitor" do 
    describe "when I visit the welcome page" do 
      it "displays the name of the application at the top of the page" do
        expect(page).to have_content("HelpList")
      end
      
      it "displays a form to log in with an email and password" do
        expect(page).to have_field(:email)
        expect(page).to have_field(:password)
      end

      it "displays a link to register a new user" do
        expect(page).to have_link("Create an account")
      end

      it "displays two buttons to log in" do
        expect(page).to have_button("Login")
        expect(page).to have_button("Login with Google")
      end

      it "displays a link to search for organizations near me" do
        expect(page).to have_link("Do you or someone you know need help?")
      end
    end
  end
end