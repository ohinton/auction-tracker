class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.string :note
      t.integer :volunteer_id
      t.integer :donor_id

      t.timestamps
    end
  end
end
