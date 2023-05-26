class Cause < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_one_attached :photo
  has_many :organisations
end
