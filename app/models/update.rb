class Update < ActiveRecord::Base
  belongs_to :donor

  validates :note, :presence => true
end
