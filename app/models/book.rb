class Book < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true
  validates :body, presence: true
  #validates :???, presence: true
end
