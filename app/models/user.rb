class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presense: true, uniqueness: { case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :username, presense: true, uniqueness: { case_sensitive: false}
end
