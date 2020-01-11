class User < ApplicationRecord
  has_secure_password
  belongs_to :city
  has_many :reviews

  validates :username, presence: true, length: { minimum: 5}
  validates :email, presence: true, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
end
