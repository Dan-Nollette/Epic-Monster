class JobListing < ApplicationRecord
  belongs_to :profile
  has_many :job_skills
  has_many :skills, through: :job_skills
  validates :title, :presence => true
  validates :description, :presence => true
end
