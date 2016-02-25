class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :annonce
  validates :user_id, presence: true
  validates :annonce_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end

