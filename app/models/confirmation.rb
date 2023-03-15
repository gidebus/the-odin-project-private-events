class Confirmation < ApplicationRecord
  belongs_to :creator, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
end
