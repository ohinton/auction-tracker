require 'rails_helper'

describe "the add a donor process" do
  it "adds a new donor", js: true do
    user = FactoryGirl.create(:user)
    volunteer = FactoryGirl.create(:volunteer)
    login_as user
    visit volunteer_path(volunteer)
    click_link 'Add a new donor'
    fill_in 'Name', :with => 'Test Name'
    fill_in 'Phone', :with => '503-000-0000'
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Address', :with => '12345 Test Address'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'OR'
    fill_in 'Zip', :with => '97210'

    click_on 'Create Donor'
    expect(page).to have_content 'Donor successfully added!'
  end

  it "gives error when no name is entered" do
    visit new_donor_path
    click_on 'Create Donor'
    expect(page).to have_content 'errors'
  end
end
