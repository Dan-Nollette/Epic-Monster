class Profile < ApplicationRecord
  has_many :attendees
  has_many :events, through: :attendees
  has_many :blog_entries
  has_many :job_listings
  has_many :job_skills, through: :job_listings
  has_many :profile_skills
  has_many :skills, through: :profile_skills
  belongs_to :user
  validates :name, :presence => true
  validates :description, :presence => true
end
