class Donor < ActiveRecord::Base
  has_many :volunteers
  has_many :updates, :through => :volunteers

  validates :name, :presence => true
end
