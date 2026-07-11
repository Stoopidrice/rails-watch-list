class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6,
  too_short: "6 characters min" }
  validates :movie, uniqueness: { scope: :list }
  validates :movie, presence: true
  validates :list, presence: true
end
