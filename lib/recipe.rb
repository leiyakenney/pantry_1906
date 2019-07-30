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

  def real_amount(ingredient)
    ingredients_required[ingredient].to_s + " " + ingredient.unit
  end

  # def real_amount_hash
  #   real_amt_hash = Hash.new(0)
  #   @ingredients_required.each do |ingredient, amt|
  #     real_amt_hash[ingredient.name] = real_amount(ingredient)
  #   end
  # end

end
