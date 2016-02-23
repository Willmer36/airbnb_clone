class Annonce < ActiveRecord::Base
  has_many :booking
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
