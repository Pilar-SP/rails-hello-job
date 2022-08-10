class Job < ApplicationRecord
  validates :position, presence: true
  validates :company, presence: true
  validates :link, presence: true
end
