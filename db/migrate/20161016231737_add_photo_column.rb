class AddPhotoColumn < ActiveRecord::Migration[5.0]
  def change
    change_table :volunteers do |t|
      t.attachment :photo
    end
  end
end
