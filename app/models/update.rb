class Update < ActiveRecord::Base
  belongs_to :donor
  belongs_to :volunteer

  validates :note, :presence => true
end
