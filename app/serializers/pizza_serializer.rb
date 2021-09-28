class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :created_at, :updated_at
end
