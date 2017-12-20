require 'rails_helper'

describe BlogEntry do
  it { should belong_to :profile }
  it { should validate_presence_of :body }
  it { should validate_presence_of :title }
  it { should validate_presence_of :profile_id }
end
