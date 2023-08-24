class UserImage < ApplicationRecord
  has_one_attached :image
  bolong_to :user
end
