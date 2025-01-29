class CreateBelfastemployees < ActiveRecord::Migration[7.1]
  def change
    create_table :belfastemployees do |t|
      t.string :firstname
      t.string :lastname
      t.integer :salary
      t.string :notes

      t.timestamps
    end
  end
end
