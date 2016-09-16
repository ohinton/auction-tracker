class DeleteEmailColumnFromVolunteers < ActiveRecord::Migration[5.0]
  def change
    remove_column :volunteers, :email, :string
  end
end
