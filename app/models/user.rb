class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence:true, length:{maximum: 50}
  validates :email, presence:true, length:{maximum: 255}

  has_secure_password
end
