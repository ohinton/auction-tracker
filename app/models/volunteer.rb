class Volunteer < ActiveRecord::Base
  has_many :donors
  has_many :updates, :through => :donors

  validates :name, :presence => true
end
