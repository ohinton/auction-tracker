require 'rails_helper'

describe "the view volunteers process" do
  it "lists the volunteers on the index page" do
    volunteer = FactoryGirl.create(:volunteer)
    visit volunteers_path
    expect(page).to have_content 'Test Volunteer'
  end
end
