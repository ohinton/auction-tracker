require 'rails_helper'

describe Donor do
  it { should belong_to :volunteer }
  it { should have_many :updates }
end
