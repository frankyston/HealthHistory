class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  # Appointments
  has_many :my_patients,-> { where status: 1 },
           foreign_key: 'physician_id',
           class_name: 'Appointment',
           dependent: :destroy

  has_many :patients,
           through: :my_patients, source: :patient

  has_many :my_physician,
           foreign_key: 'patient_id',
           class_name: 'Appointment',
           dependent: :destroy

  has_many :physicians,
           through: :my_physician, source: :physician
end
