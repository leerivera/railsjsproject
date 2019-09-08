class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :stock

  has_many :carts
  has_many :users
end
