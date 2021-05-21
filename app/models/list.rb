class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # has_many :movies, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
