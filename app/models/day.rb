class Day < ActiveRecord::Base
  has_and_belongs_to_many :donors

end
