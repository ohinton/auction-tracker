require 'rails_helper'

describe "the delete a donor process" do
  it "deletes a donor from db" do
    donor = FactoryGirl.create(:donor)
    visit donor_path(donor)
    click_link "delete"
    expect(page).to have_content 'Donors'
  end
end
