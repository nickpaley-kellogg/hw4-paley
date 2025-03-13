class User < ApplicationRecord
  has_secure_password  # Automatically requires the password_digest column
end