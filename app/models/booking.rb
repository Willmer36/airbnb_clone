class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :annonce
  validates :start_date, :end_date, presence: true
end

