class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email

  has_one :carts
  has_many :products
end
