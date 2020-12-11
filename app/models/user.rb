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

end
