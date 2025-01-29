rails g model user

rails g migration add_details_to_users gender:string salary:integer

rails g migration remove_salary_from_users salary:integer

rails generate migration CreateProducts name:string part_number:string

rails generate migration AddUserRefToProducts user:references

rails generate model Customer first_name:string last_name:string email:string

rails generate migration CreateJoinTableCustomerProduct customer product

,table_name: :purchases 
t.index :product_id
t.index :customer_id


rails generate migration AddDetailsToProducts 'price:decimal{5,2}'

rails generate migration change_column_type_in_products

 class ChangeColumnTypeInProducts < ActiveRecord::Migration[7.1]
    def change
      change_column :products, :part_number, :text      
    end
  end

rails g migration remove_user_reference_from_products
class RemoveUserReferenceFromProducts < ActiveRecord::Migration[7.1]
    def change
      remove_reference :products, :user, foreign_key: true, index: false
    end
  end

rails g migration add_foreign_key_to_products

 class AddForeignKeyToProducts < ActiveRecord::Migration[7.1]
    def change
      add_column :products, :user_id, :bigint
      
      add_foreign_key :products, :users
    end
  end

 rails g migration remove_foreign_key_from_products
 class RemoveForeignKeyFromProducts < ActiveRecord::Migration[7.1]
    def change
      remove_foreign_key :products, :users
    end
  end




## Terminal Commands
1. rails db:migrate VERSION=any_migration_number
2. rails db:rollback # for reverting last migration
3. rails db:rollback STEP=3 #up to which number of migration you want to rollback
4. rails db:setup # combination of rails db:create rails db:migrate rails db:seed
5. rails db:prepare # same as rails db:setup
6. rails db:reset # will drop the database and set it up again & is equivalent to rails db:drop db:setup
7. rails db:migrate:up VERSION=20080906120000 #any_migration_number from migration file name starting
8. rails db:migrate RAILS_ENV=test #for migrating database to test environment
9. rails db:migrate:status # which displays the status (up or down) of each migration