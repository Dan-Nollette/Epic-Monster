class Skill < ApplicationRecord
  has_many :job_skills
  has_many :job_listings, through: :job_skills
  has_many :profile_skills
  has_many :profiles, through: :profile_skills
  validates :name, {presence: true, uniqueness: true}
end
