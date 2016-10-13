require 'rails_helper'

describe Donor do
  it { should belong_to :volunteer }
  it { should have_many :updates }
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :state }

end
