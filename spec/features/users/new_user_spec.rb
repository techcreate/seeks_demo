require 'rails_helper'
RSpec.describe 'sigining up' do 
	it 'prompts for valid fields' do 
		visit '/users/new'
		
		expect(page).to have_field('Email')
		expect(page).to have_field('Name')
		expect(page).to have_field('Password')
		expect(page).to have_field('Password Confirmation')
	end
end