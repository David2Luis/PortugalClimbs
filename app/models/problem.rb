class Problem < ApplicationRecord
  belongs_to :user
  # has_many :review
  validates :category, :description, :level, :name, presence: true
end
