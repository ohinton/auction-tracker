class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_many :donors

  has_attached_file :photo, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "https://s3-us-west-2.amazonaws.com/auctionary/volunteers/photos/000/000/001/thumb/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
