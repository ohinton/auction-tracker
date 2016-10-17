class RemoveDaysColumnFromDonors < ActiveRecord::Migration[5.0]
  def change
    remove_column :donors, :days, :string, array: true
  end
end
