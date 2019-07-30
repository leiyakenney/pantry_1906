class CookBook
  attr_reader :summary

  def initialize
    @summary = {}
  end

  def recipe_hash
    recipe =
  end

  def summary
    cookbook_hash = recipe_hash
    new_hash = Hash.new
    cookbook_hash.map do |recipe, sub_hash|
      new_hash[value] = sub_hash.transform_values do |something|
      end
    end
  end


#recipe_hash needs to have:
  #:name => "name"
  #:details => {
    #:ingredients_required (rename to ingredients) (x2) => [{
      #:ingredient => "name"
      #:amount => "recipe.amount_required + ingredient.unit"}]
    #total_calories => recipe.total_calories
    #}

    def summary
    cookbook_hash = Hash.new
    all_recipes_array.each do |recipe|
      cookbook_hash = {recipe: Hash.new}
    end
    cookbook_hash.each do |recipe, stats|
      cookbook_hash[:recipe][:name] = recipe_win_percentages_type(team_id, "P")
      cookbook_hash[:recipe][:details][:ingredients] = goals_scored_per_recipe_type(team_id, "P")
      cookbook_hash[:recipe][:details] = goals_allowed_per_recipe_type(team_id, "P")
      cookbook_hash[:recipe][:average_goals_scored] = average_goals_scored_recipe_type(team_id, "P")
      cookbook_hash[:recipe][:average_goals_against] = average_goals_allowed_recipe_type(team_id, "P")
    end
  end






end
