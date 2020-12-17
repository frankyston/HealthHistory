class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :treatments
  has_many :consultations
  has_many :exams

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

	# Appointments
	has_many :shared, foreign_key: 'patient_id',
					class_name: 'Appointment', dependent: :destroy

  has_many :shared_with_me, -> { where status: 1 },
            foreign_key: 'physician_id',
            class_name: 'Appointment', dependent: :destroy

	#has_many :patients, through: :shared_with_me, source: :patient
	#has_many :physicians, through: :share, source: :physician

end
