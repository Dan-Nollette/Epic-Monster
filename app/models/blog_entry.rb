class BlogEntry < ApplicationRecord
  belongs_to :profile
  validates :body, :presence => true
  validates :title, :presence => true
  validates :profile_id, :presence => true
end
