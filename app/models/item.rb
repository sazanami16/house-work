class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :need
  belongs_to :work

  validates :name, :quantity, presence: true

  validates :need_id, numericality: { other_than: 1 }
end
