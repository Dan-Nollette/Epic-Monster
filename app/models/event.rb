class Event < ApplicationRecord
  has_many :attendees
  has_many :profiles through :attendees
end
