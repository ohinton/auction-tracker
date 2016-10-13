require 'rails_helper'

describe "the edit a volunteer process" do
  it "edits a volunteer" do
    user = FactoryGirl.create(:user)
    volunteer = FactoryGirl.create(:volunteer)
    login_as user
    visit edit_user_registration_path(volunteer)
    click_link "edit"
    fill_in 'First name', :with => "New Name"
    click_on 'Update Volunteer'
    expect(page).to have_content 'Your profile details were successfully updated!'
  end

end
