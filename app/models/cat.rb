class Cat < ApplicationRecord
　validate :name, presence:true
  validate :start_date, presence:true
end
