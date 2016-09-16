require 'rails_helper'

describe Donor do
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }
  it { should validate_presence_of :address }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :zip }

  it { should have_many :volunteers }
  it { should have_many :updates }
end
