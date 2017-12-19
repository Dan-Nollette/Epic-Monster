require 'rails_helper'

describe JobListing do
  it { should belong_to :profile }
  it { should have_many :job_skills }
  it { should have_many(:skills).through(:job_skills)}
end
