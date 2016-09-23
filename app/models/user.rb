class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :volunteer

  # after_create :make_volunteer
  #
  # def make_volunteer
  #   self.volunteer = Volunteer.create
  # end

end
