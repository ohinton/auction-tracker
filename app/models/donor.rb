class Donor < ActiveRecord::Base
  has_many :updates
  belongs_to :volunteer
  has_and_belongs_to_many :days

  geocoded_by :full_address
  after_validation :geocode

  validates :name, :presence => true
  validates :address, :presence => true
  validates :state, :presence => true

  private

  def full_address
    "#{self.address}, #{self.city}"
  end

end
