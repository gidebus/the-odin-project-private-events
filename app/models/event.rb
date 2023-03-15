class Event < ApplicationRecord
  has_many :confirmations, foreign_key: :attended_event_id
  has_many :attendees, through: :confirmations, source: :attendee
  belongs_to :creator, class_name: 'User'
end
