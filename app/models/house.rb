class House < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :favorites
  has_many_attached :photos
end
