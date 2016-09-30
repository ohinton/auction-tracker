class AddLatLonToDonors < ActiveRecord::Migration[5.0]
  def change
    add_column :donors, :latitude, :float
    add_column :donors, :longitude, :float
  end
end
