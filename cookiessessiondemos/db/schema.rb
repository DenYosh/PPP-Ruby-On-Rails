# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_26_113740) do
  create_table "allowancetypes", force: :cascade do |t|
    t.string "name"
    t.integer "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belfastemployees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "salary"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "state_id", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employeeallowances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "allowancetype_id", null: false
    t.bigint "employeesalary_id", null: false
    t.index ["allowancetype_id"], name: "index_employeeallowances_on_allowancetype_id"
    t.index ["employeesalary_id"], name: "index_employeeallowances_on_employeesalary_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "haspassport"
    t.integer "salary"
    t.string "notes"
    t.date "birthdate"
    t.date "hiredate"
    t.string "gender"
    t.bigint "country_id", null: false
    t.bigint "department_id", null: false
    t.index ["country_id"], name: "index_employees_on_country_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "employeesalaries", force: :cascade do |t|
    t.integer "salary"
    t.integer "netallowanceamount"
    t.integer "netsalary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offshoreemployees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id", null: false
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_offshoreemployees_on_city_id"
    t.index ["country_id"], name: "index_offshoreemployees_on_country_id"
    t.index ["state_id"], name: "index_offshoreemployees_on_state_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "monthname"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "gender"
    t.date "birthdate"
    t.string "email"
    t.string "phone"
    t.integer "postalcode"
    t.string "websiteurl"
    t.boolean "termsandconditions"
    t.string "role"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "states"
  add_foreign_key "employeeallowances", "allowancetypes"
  add_foreign_key "employeeallowances", "employeesalaries"
  add_foreign_key "employees", "countries"
  add_foreign_key "employees", "departments"
  add_foreign_key "offshoreemployees", "cities"
  add_foreign_key "offshoreemployees", "countries"
  add_foreign_key "offshoreemployees", "states"
  add_foreign_key "states", "countries"
end
