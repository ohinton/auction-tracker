require 'rails_helper'

describe Volunteer do
  it { should have_many :donors }
  it { should have_many :updates }
  it { should belong_to :user }
end
