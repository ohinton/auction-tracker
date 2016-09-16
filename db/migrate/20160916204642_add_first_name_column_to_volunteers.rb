class AddFirstNameColumnToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :first_name, :string
    rename_column :volunteers, :name, :last_name
  end
end
