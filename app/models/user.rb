class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :works
  has_many :reports
  has_many :nices
  has_many :bads

  validates :name, presence: true

  def already_nices?(report)
    self.nices.exists?(report_id: report.id)
  end

  def already_bads?(report)
    self.bads.exists?(report_id: report.id)
  end

end
