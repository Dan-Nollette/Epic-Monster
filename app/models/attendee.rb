class Attendee < ApplicationRecord
  belongs_to :profile
  belongs_to :event
end
