class ChangeColumnTypeInProducts < ActiveRecord::Migration[8.0]
  def change
    change_column :products, :part_number, :text
  end
end
