class Education < ApplicationRecord
  validates :school, presence: true
  validates :degree, presence: true
  validates :major, presence: true
  validates :minor, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
