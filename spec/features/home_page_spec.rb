require 'rails_helper'

RSpec.describe 'Home page features' do
	it 'displays the name of the app' do
		visit('/articles')
		expect(page).to have_content('Home')
		click_link('SIGN-OUT')
		expect(current_path).to eql('/articles')
	end
end
