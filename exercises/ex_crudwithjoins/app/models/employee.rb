class Employee < ApplicationRecord
  has_rich_text :notes

  belongs_to :department
  belongs_to :country

  attr_accessor :editable
end
