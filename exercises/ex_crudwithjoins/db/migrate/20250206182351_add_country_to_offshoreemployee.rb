class AddCountryToOffshoreemployee < ActiveRecord::Migration[8.0]
  def change
    add_reference :offshoreemployees, :country, null: false, foreign_key: true
  end
end
