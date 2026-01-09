class Count < ApplicationRecord
  validates :sensorGroup, presence: true
  validates :currentCount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
