class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_many :updates
  has_many :donors, :through => :updates
  has_many :donors

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :phone, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
end
