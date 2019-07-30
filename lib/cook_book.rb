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

  #define 26-30 for each recipe, then shovel into cookbook

  def recipe_hash
    hash_recipe = {}
    @all_recipes.each do |recipe|
      hash_recipe[:name] = recipe.name
      hash_recipe[:details] = recipe.ingredients_required[recipe]
      # hash_recipe[:details] += recipe.total_calories
    end
    hash_recipe[:name]
  end

  # def recipe_hash
  #   groceries = {}
  #   groceries[:apples] = 2
  #   groceries[:oranges] = 7
  #   groceries[:oranges]
  # end


  #recipe_hash needs to have:
    #:name => "name"
    #:details => {
      #:ingredients_required (rename to ingredients) (x2) => [{
        #:ingredient => "name"
        #:amount => "recipe.amount_required + ingredient.unit"}]
      #total_calories => recipe.total_calories
      #}

end
