class AddCountryToEmployee < ActiveRecord::Migration[8.0]
  def change
    add_reference :employees, :country, null: false, foreign_key: true, default: 1
  end
end
