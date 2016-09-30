require 'rails_helper'

describe Update do
  it { should validate_presence_of :note }
  it { should belong_to :donor }

end
