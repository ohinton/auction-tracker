require 'rails_helper'

describe "the view donors process" do
  it "lists the donors on the index page" do
    donor = Donor.create({:name => "Test Name", :phone => "503-000-0000", :email => "test@email.com", :address => "12345 N Test St", :city => "Portland", :state => "OR", :zip => "97210"})
    visit donors_path
    expect(page).to have_content 'Test Name'
  end
end
