class Pizza < ApplicationRecord
    has_many :restaurantpizzas
    has_many :restaurants, through: :restaurantpizzas
    validates :name, uniqueness: true
    validates :ingredients, uniqueness: true
  end
