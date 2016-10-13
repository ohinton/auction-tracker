require 'rails_helper'

describe "the add a donor process" do
  it "adds a new donor", js: true do
    user = FactoryGirl.create(:user)
    login_as user
    visit volunteer_path(user)
    click_link 'Please add your volunteer profile info'
    fill_in 'First name', :with => 'TestFirst'
    fill_in 'Last name', :with => 'TestLast'
    fill_in 'Phone', :with => '503-000-0000'
    fill_in 'Address', :with => '12345 N Main St'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'OR'
    fill_in 'Zip', :with => '97210'
    click_on 'Update Volunteer'
    click_link 'Add a new donor'
    fill_in 'Name', :with => 'Test Name'
    fill_in 'Business phone', :with => '503-000-0000'
    fill_in 'Business email', :with => 'test@email.com'
    fill_in 'Address', :with => '12345 Test Address'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'OR'
    fill_in 'Zip', :with => '97210'
    fill_in 'Contact person', :with => 'Test Contact'
    fill_in 'Contact person phone', :with => '503-000-0000'
    fill_in 'Contact person email', :with => 'test_contact@email.com'
    fill_in 'Donation request link', :with => 'www.example.com'
    click_on 'Create Donor'
    expect(page).to have_content 'Donor successfully added!'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    volunteer = FactoryGirl.create(:volunteer)
    login_as user
    visit new_donor_path
    click_on 'Create Donor'
    expect(page).to have_content 'errors'
  end
end
