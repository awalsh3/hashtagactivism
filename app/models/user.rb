class User < ApplicationRecord
  has_many :actions
  has_many :tasks, through: :actions
  has_many :causes, through: :tasks
end
