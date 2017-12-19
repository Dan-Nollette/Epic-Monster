class JobSkill < ApplicationRecord
  belongs_to :job_listings
  belongs_to :skill
end
