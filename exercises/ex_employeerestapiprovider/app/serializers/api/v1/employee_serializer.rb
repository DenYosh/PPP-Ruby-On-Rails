class Api::V1::EmployeeSerializer < ActiveModel::Serializer
  belongs_to :country
  belongs_to :department

  attributes :id, :firstname, :lastname, :haspassport, :salary,
  :birthdate, :hiredate, :gender, :notes, :email, :phone, :country_id,
  :department_id
end
