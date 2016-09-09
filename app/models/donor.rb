class Donor < ActiveRecord::Base
  has_many :volunteers
  has_many :updates, :through => :volunteers

  validates :name, :presence => true
  validates :phone, :presence => true
  validates :email, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
end
