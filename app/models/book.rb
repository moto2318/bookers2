class Book < ApplicationRecord
  # has_one_attached :image
  belongs_to :user
  
  def get_user
    user.attached? ? user : nil
  end
  
  
  validates :title, presence: true
  validates :body, presence: true
end
