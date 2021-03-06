class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reports
  has_many :nices
  has_many :bads
  has_many :work

  validates :name, presence: true

  def already_nices?(report)
    nices.exists?(report_id: report.id)
  end

  def already_bads?(report)
    bads.exists?(report_id: report.id)
  end
end
