class AddStateToOffshoreemployee < ActiveRecord::Migration[8.0]
  def change
    add_reference :offshoreemployees, :state, null: false, foreign_key: true
  end
end
