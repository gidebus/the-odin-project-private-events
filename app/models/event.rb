class Event < ApplicationRecord
  has_many :confirmations, foreign_key: :attended_event_id
  has_many :attendees, through: :confirmations, source: :event_attendee
  belongs_to :creator, class_name: 'User'

  validates :name, :description, :date, :location, presence: true
  
  scope :upcoming, -> { where("date >= ? ", Date.today) }
  scope :past, -> { where("date < ? ", Date.today) }
end
