class CreateJoinTableDonationStatusDonor < ActiveRecord::Migration[5.0]
  def change
    create_join_table :donation_statuses, :donors do |t|
      # t.index [:donation_status_id, :donor_id]
      # t.index [:donor_id, :donation_status_id]
    end
  end
end
