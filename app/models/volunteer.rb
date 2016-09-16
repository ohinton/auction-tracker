class Volunteer < ActiveRecord::Base
  has_many :updates
  has_many :donors, :through => :updates

  validates :name, :presence => true
  validates :phone, :presence => true
  validates :email, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
end
