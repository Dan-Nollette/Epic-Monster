require 'rails_helper'

describe Event do
  it { should have_many(:profiles).through(:attendees) }
  it { should have_many :attendees }
end
