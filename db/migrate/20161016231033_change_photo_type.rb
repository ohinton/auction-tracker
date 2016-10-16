class ChangePhotoType < ActiveRecord::Migration[5.0]
  def change
    remove_column :volunteers, :photo, :string
  end
end
