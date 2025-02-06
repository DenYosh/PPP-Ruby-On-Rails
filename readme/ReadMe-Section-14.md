---
[⬅️ Vorige](./ReadMe-Section-12-13.md) • [🏠 Terug naar Hoofdpagina](../ReadMe.md) • [Volgende ➡️](./ReadMe-Section-15-16-17.md)
---

# Sectie 14

## 1. Migrations maken voor Add, Remove, Change Columns & Foreign Keys

### Terminal Commands

1. rails db:migrate VERSION=any_migration_number
2. rails db:rollback # for reverting last migration
3. rails db:rollback STEP=3 #up to which number of migration you want to rollback
4. rails db:setup # combination of rails db:create rails db:migrate rails db:seed
5. rails db:prepare # same as rails db:setup
6. rails db:reset # will drop the database and set it up again & is equivalent to rails db:drop db:setup
7. rails db:migrate:up VERSION=20080906120000 #any_migration_number from migration file name starting
8. rails db:migrate RAILS_ENV=test #for migrating database to test environment
9. rails db:migrate:status # which displays the status (up or down) of each migration

#### Aanmaken van de user model:

```ps
rails g model user
```

#### Aanmaken van extra fields aan user:

```ps
rails g migration add_details_to_users gender:string salary:integer
```

#### Verwijderen van fields:

```ps
rails g migration remove_salary_from_users salary:integer
```

#### Aanmaken nieuw model:

```ps
rails generate migration CreateProducts name:string part_number:string
```

#### Foreign Keys toevoegen van Products naar Users

```
rails generate migration AddUserRefToProducts user:references
```

#### Customer model aanmaken

```
rails generate model Customer first_name:string last_name:string email:string
```

#### Koppeltabel aanmaken

```ps
rails generate migration CreateJoinTableCustomerProduct customer product
```

#### Aanpassen van column type

```ps
rails generate migration change_column_type_in_products
```

#### Verwijderen van Foreign Keys

```ps
rails g migration remove_user_reference_from_products
```

#### Foreign Key toevoegen

```ps
rails g migration add_foreign_key_to_products
```

#### Foreign Key verwijderen

```ps
rails g migration remove_foreign_key_from_products
```
