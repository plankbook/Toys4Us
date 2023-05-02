class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toy

  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  validates :start_date, presence: true
end
