# require 'rails_helper'
#
# describe "the add a volunteer process" do
#   it "adds a new volunteer" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user)
#     volunteer = FactoryGirl.create(:volunteer)
#     visit volunteers_path
#     click_link 'Create your profile'
#     fill_in 'First name', :with => 'Test First'
#     fill_in 'Last name', :with => 'Test Last'
#     fill_in 'Phone', :with => '503-000-0000'
#     fill_in 'Address', :with => '12345 Test Address'
#     fill_in 'City', :with => 'Portland'
#     fill_in 'State', :with => 'OR'
#     fill_in 'Zip', :with => '97210'
#     click_on 'Create Volunteer'
#     expect(page).to have_content 'Your profile details were successfully added!'
#   end
#
#   it "gives error when no name is entered" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user)
#     visit volunteers_path
#     click_link 'Create your profile'
#     click_on 'Create Volunteer'
#     expect(page).to have_content 'errors'
#   end
# end
