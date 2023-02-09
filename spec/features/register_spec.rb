# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User visits the root of application.", type: :feature do
  scenario "Registers a new account" do
    visit new_user_registration_path
    fill_in "email", with: "test@example.com"
    fill_in "Password", with: "123456"
    fill_in "Confirm password", with: "123456"
    click_button "Register"

    expect(page).to have_content("Welcome! You have signed up successfully")
  end

  scenario "Registers a new account" do
    visit new_user_registration_path
    fill_in "email", with: "test@example.com"
    fill_in "Password", with: "123456"
    fill_in "Confirm password", with: ""
    click_button "Register"

    expect(page).to_not have_content("Welcome! You have signed up successfully")
  end

  scenario "Registers a new account" do
    visit new_user_registration_path
    fill_in "email", with: "test@example.com"
    fill_in "Password", with: "123456"
    fill_in "Confirm password", with: ""
    click_button "Register"

    expect(page).to have_content("Password confirmation doesn't match Password")
  end
end
