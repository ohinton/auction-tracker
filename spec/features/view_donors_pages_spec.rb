require 'rails_helper'

describe "the view donors process" do
  it "lists the donors on the index page" do
    donor = FactoryGirl.create(:donor)
    visit donors_path
    expect(page).to have_content 'Test Donor'
  end
end
