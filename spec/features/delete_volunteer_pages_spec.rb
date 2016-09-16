require 'rails_helper'

describe "the delete a volunteer process" do
  it "deletes a volunteer from db" do
    volunteer = FactoryGirl.create(:volunteer)
    visit volunteer_path(volunteer)
    click_link "delete"
    expect(page).to have_content 'Volunteers'
  end
end
