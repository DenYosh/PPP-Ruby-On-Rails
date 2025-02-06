class RemoveUserReferenceFromProducts < ActiveRecord::Migration[8.0]
  def change
    remove_reference :products, :user, foreign_key: true, index: false
  end
end
