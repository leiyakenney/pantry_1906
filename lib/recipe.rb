class Recipe
  attr_reader :name, :ingredients_required, :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = {}
    @ingredients = []
  end

  def add_ingredient(ingredient, amount_required)
    @ingredients << ingredient
    ingredients_required[ingredient] = amount_required
  end

  def amount_required(ingredient)
    ingredients_required[ingredient]
  end

  def total_calories
    ingredients_required.sum do |ingredient, amt|
      (ingredient.cals * amt)
    end
  end

end
