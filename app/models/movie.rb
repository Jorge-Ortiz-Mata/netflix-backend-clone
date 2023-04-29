class Movie < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { message: "The movie's name has been already created" }
  validates :description, presence: true, length: { minimum: 50 }
  validates :year, presence: true, length: { minimum: 3 }
  validates :duration, presence: true
  has_one_attached :avatar
end
