class Consultation < ApplicationRecord
  belongs_to :user
  has_many :exams
  has_many :treatments
  has_many_attached :files
end
