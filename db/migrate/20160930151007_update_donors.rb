class UpdateDonors < ActiveRecord::Migration[5.0]
  def change
    rename_column :donors, :phone, :business_phone
    rename_column :donors, :email, :business_email
    add_column :donors, :contact_person, :string
    add_column :donors, :contact_person_email, :string
    add_column :donors, :contact_person_phone, :string
    add_column :donors, :donation_request_link, :string
  end
end
