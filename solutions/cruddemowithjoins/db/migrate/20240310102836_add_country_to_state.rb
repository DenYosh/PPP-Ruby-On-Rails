class AddCountryToState < ActiveRecord::Migration[7.1]
  def change
    add_reference :states, :country, null: false, foreign_key: true
  end
end
