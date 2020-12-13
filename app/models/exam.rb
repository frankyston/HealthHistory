class Exam < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :exam_date, presence: true
  validates :exam_location, presence: true

end
