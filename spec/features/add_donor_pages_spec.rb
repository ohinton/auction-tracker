# require 'rails_helper'
#
# describe "the add a donor process", js: true do
#   it "adds a new donor" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user)
#     volunteer = FactoryGirl.create(:volunteer)
#     visit volunteers_path
#     click_link 'Add a new donor'
#     binding.pry
#     fill_in 'Name', :with => 'Test Name'
#     fill_in 'Phone', :with => '503-000-0000'
#     fill_in 'Email', :with => 'test@email.com'
#     fill_in 'Address', :with => '12345 Test Address'
#     fill_in 'City', :with => 'Portland'
#     fill_in 'State', :with => 'OR'
#     fill_in 'Zip', :with => '97210'
#
#     find("#donor_volunteer_id", :visible => false).value
#
#     click_on 'Create Donor'
#     expect(page).to have_content 'Donors'
#   end
#
#   it "gives error when no name is entered", js: true do
#     visit new_donor_path
#     click_on 'Create Donor'
#     expect(page).to have_content 'errors'
#   end
# end
