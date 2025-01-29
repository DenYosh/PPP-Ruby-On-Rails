class Api::V1::DepartmentSerializer < ActiveModel::Serializer

  has_many :employees

  attributes :id,:name
end
