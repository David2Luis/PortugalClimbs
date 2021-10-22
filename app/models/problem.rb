class Problem < ApplicationRecord
  belongs_to :user
  # has_many :review
  validates :location, :category, :description, :level, :name
end
