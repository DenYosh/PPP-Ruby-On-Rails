class AddCountryToEmployee < ActiveRecord::Migration[7.1]
  def change
    add_reference :employees, :country, null: false, foreign_key: true
  end
end
