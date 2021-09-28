class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price, :created_at, :updated_at
  has_one :pizza
  has_one :restaurant
end
