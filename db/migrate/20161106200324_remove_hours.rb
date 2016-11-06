class RemoveHours < ActiveRecord::Migration[5.0]
  def change
    remove_column :donors, :hours_am, :integer
    remove_column :donors, :hours_pm, :integer
  end
end
