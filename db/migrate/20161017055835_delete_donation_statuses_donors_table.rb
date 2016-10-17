class DeleteDonationStatusesDonorsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :donation_statuses_donors
  end
end
