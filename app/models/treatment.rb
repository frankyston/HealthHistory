class Treatment < ApplicationRecord
  belongs_to :consultation
  has_many_attached :files
end
