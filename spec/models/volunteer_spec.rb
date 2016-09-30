require 'rails_helper'

describe Volunteer do
  it { should have_many :donors }
  it { should belong_to :user }
end
