require 'rails_helper'

describe Profile do
  it { should have_many :profile_skills }
  it { should have_many :job_listings }
  it { should have_many :blog_entries }
  it { should have_many :attendees }
  it { should have_many(:events).through(:attendees)}
  it { should have_many(:job_skills).through(:job_listings)}
  it { should have_many(:skills).through(:profile_skills)}
  it {should belong_to :user}
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
