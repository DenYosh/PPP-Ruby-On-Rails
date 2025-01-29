class Api::V1::CountrySerializer < ActiveModel::Serializer

  has_many :employees

  attributes :id,:name
end
