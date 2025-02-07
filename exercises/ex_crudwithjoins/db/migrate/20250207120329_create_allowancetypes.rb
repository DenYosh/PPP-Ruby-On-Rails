class CreateAllowancetypes < ActiveRecord::Migration[8.0]
  def change
    create_table :allowancetypes do |t|
      t.string :name
      t.integer :percetage

      t.timestamps
    end
  end
end
