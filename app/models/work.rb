class Work < ApplicationRecord
  validates :name, presence: true
  validates :weight, presence: true
  validates :rule, presence: true
end
