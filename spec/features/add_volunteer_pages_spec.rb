require 'rails_helper'

describe "the add a volunteer process" do
  it "adds a new volunteer" do
    visit volunteers_path
    click_link 'Add a new volunteer'
    fill_in 'First Name', :with => 'Test First'
    fill_in 'Last Name', :with => 'Test Last'
    fill_in 'Phone', :with => '503-000-0000'
    fill_in 'Address', :with => '12345 Test Address'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'OR'
    fill_in 'Zip', :with => '97210'
    click_on 'Create Volunteer'
    expect(page).to have_content 'Volunteers'
  end

  it "gives error when no name is entered" do
    visit new_volunteer_path
    click_on 'Create Volunteer'
    expect(page).to have_content 'errors'
  end
end
