class Event < ApplicationRecord
  has_many :attendees
  has_many :profiles, through: :attendees
  validates :location, :presence => true
  validates :title, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
  validates :description, :presence => true  
end
