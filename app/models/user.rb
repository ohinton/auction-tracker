class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :volunteer

  after_create :make_volunteer

  def make_volunteer
    Volunteer.create(:user => self)
  end

end
