class JobSkill < ApplicationRecord
  belongs_to :job_listing
  belongs_to :skill
end
