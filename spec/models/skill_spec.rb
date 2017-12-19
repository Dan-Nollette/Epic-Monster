require 'rails_helper'

describe Skill do
  it { should have_many :job_skills }
  it { should have_many :profile_skills }
  it { should have_many(:profiles).through(:profile_skills) }
  it { should have_many(:job_listings).through(:job_skills) }
end
