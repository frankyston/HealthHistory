class Treatment < ApplicationRecord
  belongs_to :user
  has_many_attached :files
end
