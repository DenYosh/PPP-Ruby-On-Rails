class UserDetail < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 15 }
  validates :profile, presence: true
end
