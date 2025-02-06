class Employee < ApplicationRecord
  has_rich_text :notes

  belongs_to :department
  belongs_to :country

  attr_accessor :editable

  scope :search, ->(query) {
    if query.present?
      left_joins(:department)
        .where("employees.id LIKE ? OR firstname LIKE ? OR lastname LIKE ? OR departments.name LIKE ?",
        "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
    else
      all
    end
  }
end
