class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_many :donors


end
