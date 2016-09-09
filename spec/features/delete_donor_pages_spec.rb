require 'rails_helper'

describe "the delete a donor process" do
  it "deletes a donor from db" do
    donor = Donor.create({:name => "Test Name", :phone => "503-000-0000", :email => "test@email.com", :address => "12345 N Test St", :city => "Portland", :state => "OR", :zip => "97210"})
    visit donor_path(donor)
    click_link "delete"
    expect(page).to have_content 'Donors'
  end
end
