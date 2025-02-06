class Employee < ApplicationRecord
  has_rich_text :notes

  belongs_to :department
  belongs_to :country
end
