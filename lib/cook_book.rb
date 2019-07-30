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

  def summary
    cookbook_hash = Hash.new
    @all_recipes.each do |recipe|
      cookbook_hash[recipe] = {name: Hash.new, details: Hash.new}
    end
    cookbook_hash[recipe][:name]
    cookbook_hash[recipe][:details][:ingredients]
    cookbook_hash[recipe][:details][:total_calories]
  end

  # def seasonal_summary(team_id)
  # season_stats = Hash.new
  # all_seasons_array.each do |season|
    # season_stats[season] = {postseason: Hash.new, regular_season: Hash.new}
  # end
  season_stats.each do |season, stats|
    season_stats[season][:postseason][:win_percentage] = season_win_percentages_type(team_id, "P")[season]
    season_stats[season][:postseason][:total_goals_scored] = goals_scored_per_season_type(team_id, "P")[season]
    season_stats[season][:postseason][:total_goals_against] = goals_allowed_per_season_type(team_id, "P")[season]
    season_stats[season][:postseason][:average_goals_scored] = average_goals_scored_season_type(team_id, "P")[season]
    season_stats[season][:postseason][:average_goals_against] = average_goals_allowed_season_type(team_id, "P")[season]
    season_stats[season][:regular_season][:win_percentage] = season_win_percentages_type(team_id, "R")[season]
    season_stats[season][:regular_season][:total_goals_scored] = goals_scored_per_season_type(team_id, "R")[season]
    season_stats[season][:regular_season][:total_goals_against] = goals_allowed_per_season_type(team_id, "R")[season]
    season_stats[season][:regular_season][:average_goals_scored] = average_goals_scored_season_type(team_id, "R")[season]
    season_stats[season][:regular_season][:average_goals_against] = average_goals_allowed_season_type(team_id, "R")[season]
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

end
