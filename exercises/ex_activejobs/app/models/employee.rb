class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, presence: true,  format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :update_employee
  after_update :update_employee


  def update_employee
    UpdateEmployeesJob.set(wait: 1.minutes).perform_later(self.id, { notes: "create notes from job" }) if saved_changes.key?(:created_at)
    UpdateEmployeesJob.set(queue: "high_priority").perform_later(self.id, { notes: "update notes from job" }) if saved_changes.key?(:updated_at)
  end
end
