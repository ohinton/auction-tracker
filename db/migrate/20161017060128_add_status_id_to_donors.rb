class AddStatusIdToDonors < ActiveRecord::Migration[5.0]
  def change
    add_column :donors, :donation_status_id, :integer
  end
end
