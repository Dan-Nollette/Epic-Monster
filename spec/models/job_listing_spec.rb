require 'rails_helper'

describe JobListing do
  it { should belong_to :profile }
  it { should have_many :job_skills }
  it { should have_many(:skills).through(:job_skills)}
  it { should validate_presence_of :description }
  it { should validate_presence_of :title }
end
