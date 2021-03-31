class Report < ApplicationRecord
  belongs_to :user
  belongs_to :work
  has_one_attached :image
  has_many :nices
  has_many :bads

  validates :message, presence: true
  validates :image, presence: true
end
