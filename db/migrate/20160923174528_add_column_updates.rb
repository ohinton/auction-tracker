class AddColumnUpdates < ActiveRecord::Migration[5.0]
  def change
    add_column :updates, :date, :date
  end
end
