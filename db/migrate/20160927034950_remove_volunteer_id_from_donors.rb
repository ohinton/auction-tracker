class RemoveVolunteerIdFromDonors < ActiveRecord::Migration[5.0]
  def change
    remove_column :donors, :volunteer_id, :integer
  end
end
