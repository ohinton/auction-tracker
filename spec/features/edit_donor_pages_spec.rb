# require 'rails_helper'
#
# describe "the edit a donor process" do
#   it "edits a donor" do
#     donor = FactoryGirl.create(:donor)
#     visit donor_path(donor)
#     click_link "edit"
#     fill_in 'Name', :with => "New Name"
#     click_on 'Update Donor'
#     expect(page).to have_content 'Donors'
#   end
#
#
#   it "gives error when no name is entered" do
#     donor = FactoryGirl.create(:donor)
#     visit donor_path(donor)
#     click_link "edit"
#     fill_in 'Name', :with => " "
#     click_on 'Update Donor'
#     expect(page).to have_content 'errors'
#   end
# end
