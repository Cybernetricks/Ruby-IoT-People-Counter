class Room < ApplicationRecord
  has_many :sensor_events

  validates :name, presence: true, uniqueness: true
end
