class Appointment < ApplicationRecord
  belongs_to :patient, class_name: 'User'
  belongs_to :physician, class_name: 'User'

  validates :patient_id, presence: true
  validates :physician_id, presence: true
  validates :status, presence: true
  validates :patient_id, uniqueness: { scope: :physician_id }

  enum status: {
    blocked: 0,
    shared: 1
  }
end
