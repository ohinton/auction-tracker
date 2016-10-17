class AddBizHoursToDonors < ActiveRecord::Migration[5.0]
  def change
    add_column :donors, :days, :string, array: true
    add_column :donors, :hours_am, :integer
    add_column :donors, :hours_pm, :integer
  end
end
