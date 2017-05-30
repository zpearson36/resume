class Work < ApplicationRecord
  dateRegEx = /\A(?:0?[1-9]|1[0-2])\/(?:0?[1-9]|[1-2]\d|3[01])\/\d{4}\Z/
  validates :company, presence: true
  validates :name, presence: true
  validates :start, presence: true#, format: {with: dateRegEx}
  validates :end, presence: true#, format: {with: dateRegEx}
  validates :description, presence: true
end
