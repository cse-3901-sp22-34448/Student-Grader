class Event < ApplicationRecord
  validates :title, presence: true
  validates :datetime, presence: true
  has_many :feedbacks
end
