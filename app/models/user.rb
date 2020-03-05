class User < ApplicationRecord
  # has_secure_password
  # validates :image,presence: true
  # has_one_attached :image

 before_save { email.downcase! }
 validates :name, presence: true, length: { maximum: 50 }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, length: { maximum: 255 },
                   format: { with: VALID_EMAIL_REGEX },uniqueness:  { case_sensitive: false }
 validates :password, presence: true, length: { minimum: 6 }, confirmation: true, unless: :id?, on: :create
 validates :image, presence: true
 has_one_attached :image

 has_secure_password

  mount_uploader :image, ImageUploader
end
