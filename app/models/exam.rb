class Exam < ApplicationRecord
  belongs_to :consultation

  validates :title, presence: true
  validates :exam_date, presence: true
  validates :exam_location, presence: true
  has_many_attached :files

end
