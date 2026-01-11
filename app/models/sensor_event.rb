class SensorEvent < ApplicationRecord
  belongs_to :room

  validates :room, presence: true
  validates :delta, presence: true, inclusion: { in: [-1, 1] }
  validates :recorded_at, presence: true

  enum direction: { exit: -1, entry: 1 }
end
