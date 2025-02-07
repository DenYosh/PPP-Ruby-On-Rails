class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :trackable

  belongs_to :role, optional: true

  before_save :manage_role

  def manage_role
      if self.customer?
        self.role_id = 1
      end
  end

  def staff_user?
    self.admin_type == 2
  end

  def super_admin?
    self.admin_type == 0
  end

  def customer?
    self.admin_type == 1
  end
end
