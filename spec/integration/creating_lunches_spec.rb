require 'spec_helper'

feature 'Creating Lunches' do
	before do
		visit '/'
		click_link 'New Lunch'
	end

	scenario "can create a lunch" do
		fill_in 'Food', :with => 'Apples, sandwiches'
		fill_in 'Drink', :with => 'Water'
		fill_in 'Cost', :with => 5.55
		click_button 'Create Lunch'
		page.should have_content('Lunch has been created')
	end

	scenario "can not create a lunch without any food" do
		click_button 'Create Lunch'
		page.should have_content("Lunch has not been created.")
		page.should have_content("Food can't be blank")
	end
end
