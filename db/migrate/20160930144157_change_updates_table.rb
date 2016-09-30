class ChangeUpdatesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :updates, :volunteer_id, :integer
  end
end
