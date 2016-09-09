require 'rails_helper'

describe "the view volunteers process" do
  it "lists the volunteers on the index page" do
    volunteer = Volunteer.create({:name => "Test Name", :phone => "503-000-0000", :email => "test@email.com", :address => "12345 N Test St", :city => "Portland", :state => "OR", :zip => "97210"})
    visit volunteers_path
    expect(page).to have_content 'Test Name'
  end
end
