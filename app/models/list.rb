class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
end


# if you want to get relevant bookmarks
# if you have a specific intention then you need
# has many, but otherwise you dont need
