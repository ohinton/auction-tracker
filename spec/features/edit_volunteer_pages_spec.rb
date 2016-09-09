require 'rails_helper'

describe "the edit a volunteer process" do
  it "edits a volunteer" do
    volunteer = Volunteer.create({:name => "Test Name", :phone => "503-000-0000", :email => "test@email.com", :address => "12345 N Test St", :city => "Portland", :state => "OR", :zip => "97210"})
    visit volunteer_path(volunteer)
    click_link "edit"
    fill_in 'Name', :with => "New Name"
    click_on 'Update Volunteer'
    expect(page).to have_content 'Volunteers'
  end
end
