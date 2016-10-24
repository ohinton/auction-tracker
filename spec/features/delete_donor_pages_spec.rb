require 'rails_helper'

describe "the delete a donor process" do
  it "deletes a donor from db" do
    donor = FactoryGirl.create(:donor)
    user = FactoryGirl.create(:user)
    login_as user
    visit donor_path(donor)
    click_link "Delete"
    expect(page).to have_content 'Donors'
  end
end
