class Cat < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true
end
