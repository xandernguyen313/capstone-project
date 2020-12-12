class Meeting < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :start_time, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10, maximum: 500}
end
