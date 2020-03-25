class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, length: { minimum: 8 }, on: :create
    validates :password, length: { minimum: 8 }, on: :update, unless: Proc.new { |a| a.password.blank? }
    validates :email, presence: true

end
