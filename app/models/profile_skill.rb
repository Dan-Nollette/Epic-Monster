class ProfileSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :profile
end
