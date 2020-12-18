class Treatment < ApplicationRecord
  belongs_to :consultation
  validates :title, presence: true
  validates :treatment_date, presence: true
  validates :treatment_location, presence: true
  has_many_attached :files
end
