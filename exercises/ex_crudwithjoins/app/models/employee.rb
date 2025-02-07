class Employee < ApplicationRecord
  has_rich_text :notes

  belongs_to :department
  belongs_to :country

  attr_accessor :editable

  scope :search, ->(query) {
    if query.present?
      left_joins(:department)
        .where("employees.id LIKE ? OR firstname LIKE ? OR lastname LIKE ? OR departments.name LIKE ?",
        "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
    else
      all
    end
  }

  after_initialize :do_after_initialize

  after_find :output_after_find

  before_save :print_save_message
  around_save :print_around_save_message
  after_save :print_saved_message

  before_create :print_create_message
  around_create :print_around_create_message
  after_create :print_created_message

  before_update :print_update_message
  around_update :print_around_update_message
  after_update :print_updated_message

  before_destroy :print_destroy_message
  around_destroy :print_around_destroy_message
  after_destroy :print_destroyed_message

  private
  def do_after_initialize
    puts "AFTER INITIALIZE :- Employee initialized with firstname: #{firstname}, lastname: #{lastname}"
  end

  def output_after_find
    puts "AFTER FIND :- Employee found with firstname: #{firstname}, lastname: #{lastname}"
  end

  def print_save_message
    puts "BEFORE SAVE :- Employee is being saved..."
    today = Date.today
    if today.saturday? || today.sunday?
      errors.add(:base, "Cannot insert record on a Saturday or Sunday")
      throw(:abort)
    end
  end

  def print_around_save_message
    puts "AROUND SAVE :- Do something before saving"
    yield
    puts "AROUND SAVE :- Employee saved successfully!"
  end

  def print_saved_message
    puts "AFTER SAVE :- Employee saved!"
  end

  def print_create_message
    puts "BEFORE CREATE :- Creating Employee..."
  end

  def print_around_create_message
    puts "AROUND CREATE :- Creating around Employee..."
    yield
    puts "AROUND CREATE :- Employee created!"
  end

  def print_created_message
    puts "AFTER CREATE :- Employee created!!"
  end

  def print_update_message
    puts "BEFORE UPDATE :- Updating Employee..."
  end

  def print_around_update_message
    puts "AROUND UPDATE :- Updating around Employee..."
    yield
    puts "AROUND UPDATE :- Employee updated!"
  end

  def print_updated_message
    puts "AFTER UPDATE :- Employee updated!!"
  end

  def print_destroy_message
    puts "BEFORE DESTROY :- Destroying Employee..."
  end

  def print_around_destroy_message
    puts "AROUND DESTROY :- Destroying around Employee..."
    yield
    puts "AROUND DESTROY :- Employee destroyed!"
  end

  def print_destroyed_message
    puts "AFTER DESTROY :- Employee destroyed!!"
    Backupemployee.create(firstname: self.firstname, lastname: self.lastname)
  end
end
