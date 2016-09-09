require 'rails_helper'

describe "the delete a volunteer process" do
  it "deletes a volunteer from db" do
    volunteer = Volunteer.create({:name => "Test Name", :phone => "503-000-0000", :email => "test@email.com", :address => "12345 N Test St", :city => "Portland", :state => "OR", :zip => "97210"})
    visit volunteer_path(volunteer)
    click_link "delete"
    expect(page).to have_content 'Volunteers'
  end
end
