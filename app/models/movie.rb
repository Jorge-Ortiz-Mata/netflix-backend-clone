class Movie < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :duration, presence: true
end
