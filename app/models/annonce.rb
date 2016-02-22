class Annonce < ActiveRecord::Base
  has_many :booking
  belongs_to :user

end
