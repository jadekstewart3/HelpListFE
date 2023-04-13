require "rails_helper"

describe "User Login" do
  before :each do
    @user = create(:user)
  end

  describe "As a visitor" do
    describe "when I visit the welcome page" do
      it "displays a form to log in with an email and password" do
        visit root_path

        expect(page).to have_field(:email)
        expect(page).to have_field(:password)
      end

      it "displays two buttons to log in" do
        visit root_path

        expect(page).to have_button("Login")
        expect(page).to have_button("Login with Google")
      end
    end

    describe "when I fill in the login form" do
      it "logs me in and redirects me to my dashboard" do
        visit root_path

        fill_in :email, with: @user.email
        fill_in :password, with: @user.password
        click_button "Login"

        expect(current_path).to eq(dashboard_path)
        expect(page).to have_content("Welcome back, " + @user.email)
      end
    end

    describe "when I fill in the login form incorrectly" do
      it "does not log me in and displays an error message" do
        visit root_path

        fill_in :email, with: @user.email
        fill_in :password, with: "wrong password"
        click_button "Login"

        expect(current_path).to eq(root_path)
        expect(page).to have_content("Incorrect email or password")
      end
    end
  end
end