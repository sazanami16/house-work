class Work < ApplicationRecord
  validates :name, presence: true
  validates :weight, presence: true
  belongs_to :user
end
