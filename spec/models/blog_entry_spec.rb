require 'rails_helper'

describe BlogEntry do
  it { should belong_to :profile }
end
