class Work < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weight
  validates :name, presence: true
  validates :weight_id, numericality: { other_than: 1 }
  validates :rule, presence: true
end
