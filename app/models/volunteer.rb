class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_many :updates
  has_many :donors, :through => :updates


end
