class CookBook
  attr_reader :summary, :all_recipes

  def initialize
    @summary = {}
    @all_recipes = []
  end

  def summary
    Hash.new
  end

  def add_recipe(recipe)
    @all_recipes << recipe
  end

  def recipe_hash

  end

  # what I wanted summary to look like
  
  # def summary
  #   cookbook_array = []
  #   @all_recipes.each do |recipe|
  #     cookbook_array << recipe_hash
  #     recipe_hash.each do |
  #     recipe_hash[recipe][:name]
  #     recipe_hash[recipe][:details][:ingredients]
  #     recipe_hash[recipe][:details][:ingredients][:ingredient][:total_amount]
  #     recipe_hash[recipe][:details][:total_calories]
  #   end
  # end

  def summary
    cookbook_array = []
    @all_recipes.each do |recipe|
      hash_recipe = {}
      hash_recipe[:name] = recipe.name
      hash_recipe[:details] = [:ingredients]
      hash_recipe[:details] = recipe.ingredients_required
      ingredient_arr = []
      hash_recipe[:details][:ingredients] = recipe.ingredients_required.each do |ingredient|
        ingredient_arr << ingredient[0].name
      end
      cookbook_array << hash_recipe
    end
    cookbook_array
  end

  #recipe_hash needs to have:
    #:name => "name"
    #:details => {
      #:ingredients_required (rename to ingredients) (x2) => [{
        #:ingredient => "name"
        #:amount => "recipe.amount_required + ingredient.unit"}]
      #total_calories => recipe.total_calories
      #}

end
