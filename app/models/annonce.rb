class Annonce < ActiveRecord::Base
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
