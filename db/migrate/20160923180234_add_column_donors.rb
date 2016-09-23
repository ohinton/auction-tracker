class AddColumnDonors < ActiveRecord::Migration[5.0]
  def change
    add_column :donors, :volunteer_id, :integer
  end
end
