class AddStateToOffshoreemployee < ActiveRecord::Migration[7.1]
  def change
    add_reference :offshoreemployees, :state, null: false, foreign_key: true
  end
end
