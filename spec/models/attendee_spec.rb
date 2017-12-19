require 'rails_helper'

describe Attendee do
  it { should belong_to :event }
  it { should belong_to :profile }
end
