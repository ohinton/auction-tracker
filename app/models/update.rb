class Update < ActiveRecord::Base
  belongs_to :donor

  validates :note, :presence => true
  validates :date, :presence => true
  validates :donor_id, :presence => true

  default_scope {order('date DESC')}

end
