require 'rails_helper'

RSpec.describe 'Home page features' do
  let(:homepage) { visit('/articles') }
  let(:user) { User.create(first_name: 'User', last_name: 'last', email: 'oether@example.com', password: 'password') }

  it 'displays the name of the app' do
    visit('/articles')
    expect(page).to have_content('Home')
  end
  it 'should have an header' do
    visit('/articles')
    expect(page).to have_selector('header')
  end
  it 'should have a footer' do
    visit('/articles')
    expect(page).to have_selector('footer')
  end
  it 'the articles path should open the homepage' do
    visit('/articles')
    expect(page).to have_current_path(articles_path)
  end

  it 'Homepage should have the latest articles section ' do
    visit('/articles')
    expect(page).to have_content('Latest Articles')
  end
  it 'Homepage should have the more from this topic section ' do
    visit('/articles')
    expect(page).to have_content('More from this topic')
  end

  it 'onClick create article button it should redirect to artilce/new' do
    # visit('/articles')
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    sleep(4)
    expect(page).to have_current_path(root_path)
    expect(page).to have_content('Create article')
    click_on('Create article')
    sleep(3)
    expect(page).to have_current_path(new_article_path)
    expect(page).to have_css('div.form-inputs')
  end

  it 'Should log out the user upon clicking sign-out button' do
    # visit('/articles')
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    sleep(4)
    expect(page).to have_current_path(root_path)
    click_on('sign-out')
    sleep(3)
    expect(page).to have_current_path(root_path)
  end

  it 'should redirect the user user profile page' do
    user.save
    sleep(3)
    # user = User.first
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    sleep(4)
    expect(page).to have_current_path(root_path)
    expect(page).to have_selector('span.header__user-item a')
    click_on(user.first_name + ' ' + user.last_name)
    sleep(3)
    expect(page).to have_content("#{user.first_name} #{user.last_name}")
  end
end
