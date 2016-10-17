class CreateJoinTableDayDonor < ActiveRecord::Migration[5.0]
  def change
    create_join_table :days, :donors do |t|
      # t.index [:day_id, :donor_id]
      # t.index [:donor_id, :day_id]
    end
  end
end
