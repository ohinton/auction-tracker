class Donor < ActiveRecord::Base
  has_many :updates
  belongs_to :volunteer

  validates :name, :presence => true
end
