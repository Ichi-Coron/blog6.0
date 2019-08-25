class User < ApplicationRecord
  has_secure_password
  validates :image,presence: true
  # has_one_attached :iamge
end
