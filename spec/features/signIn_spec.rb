require 'rails_helper'

RSpec.describe "Sign in process", type: :feature do
  # before :each do
  #   User.create(name: 'Mary')
  # end
  let!(:user){User.create(email: 'tester@test.com', password: '123456', password_confirmation: '123456')}
  scenario 'user wants to signin with wrong credentials' do
    visit new_user_session_path
    fill_in 'email', with: 'test@example.com'
    fill_in 'Password', with: '123456'
    click_button 'Sign in'

    expect(page).to_not have_content('Successfully signed In')
  end
 
  scenario 'user wants to signin with wrong credentials' do
    visit new_user_session_path
    fill_in 'email', with: 'tester@example.com'
    fill_in 'Password', with: '123456'
    click_button 'Sign in'

    expect(page).to have_content('Invalid Email or password.')
  end
  
  scenario 'user wants to signin with wrong credentials' do
    visit new_user_session_path
    fill_in 'email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    
    expect(page).to have_content('Signed in successfully')
  end

  scenario 'user wants to signin with wrong credentials' do
    visit new_user_session_path
    fill_in 'email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
    
    expect(page).to_not have_content('Invalid Email or password.')
  end
end