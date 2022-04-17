class Feedback < ApplicationRecord
  validates :score, presence: true
  validates :comment, presence: true
  belongs_to :event
  belongs_to :student, optional: true
end
