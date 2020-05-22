require 'rails_helper'

RSpec.describe 'Signing in' do
  let(:user) { User.create(first_name: 'User', last_name: 'last', email: 'other@example.com', password: 'password') }

  scenario 'Signing in with wrong credentials' do
    user.save
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: 'test@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'

    sleep(4)
    expect(page).to have_content 'Invalid Email or password'
  end

  scenario 'Signing in as with the correct credentials' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    sleep(4)
    expect(page).to have_content 'Signed in successfully'
  end
end
