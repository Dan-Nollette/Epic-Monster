require 'rails_helper'

describe Event do
  it { should validate_presence_of :start_time }
  it { should validate_presence_of :end_time }
  it { should validate_presence_of :description }
  it { should validate_presence_of :location }
  it { should validate_presence_of :title }
  it { should have_many(:profiles).through(:attendees) }
  it { should have_many :attendees }
end
