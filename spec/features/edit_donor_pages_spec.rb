require 'rails_helper'

describe "the edit a donor process" do
  it "edits a donor" do
    donor = Donor.create({:name => "Test Name", :phone => "503-000-0000", :email => "test@email.com", :address => "12345 N Test St", :city => "Portland", :state => "OR", :zip => "97210"})
    visit donor_path(donor)
    click_link "edit"
    fill_in 'Name', :with => "New Name"
    click_on 'Update Donor'
    expect(page).to have_content 'Donors'
  end
end
