require 'rails_helper'

describe "the view donors process" do
  it "lists the donors on the index page" do
    donor = FactoryGirl.create(:donor)
    user = FactoryGirl.create(:user)
    login_as user
    visit donors_path
    expect(page).to have_content donor.name
  end
end
