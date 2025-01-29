class RemoveUserReferenceFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :products, :user, foreign_key: true, index: false
  end
end
