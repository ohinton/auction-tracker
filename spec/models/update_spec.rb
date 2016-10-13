require 'rails_helper'

describe Update do
  it { should validate_presence_of :note }
  it { should validate_presence_of :date }
  it { should validate_presence_of :donor_id }
  it { should belong_to :donor }

end
