class AddPhotoColumn < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :volunteers, :photo
  end
end
