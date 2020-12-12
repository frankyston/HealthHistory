class Treatment < ApplicationRecord
  belongs_to :user

  validates :treatment_date, presence: true
  validates :treatment_location, presence: true
end
