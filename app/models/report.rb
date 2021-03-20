class Report < ApplicationRecord
  belongs_to :user
  belongs_to :work
  has_one_attached :image

  validates :message,presence:true
end
