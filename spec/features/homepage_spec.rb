# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User visits the root of application", type: :feature do
  scenario "visiting the site for the first time" do
    visit root_path
    expect(page).to have_text("Movies")
  end

  scenario "click the register button" do
    visit new_user_registration_path
    expect(page).to have_text("Register an account")
  end

  scenario "click the sign in button" do
    visit new_user_session_path
    expect(page).to have_content("Sign in to your account")
  end
end
