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

end

#recipe_hash needs to have:
  #:name => "name"
  #:details => {
    #:ingredients (x2) => [{
      #:ingredient => "name"
      #:amount => "recipe.amount_required + ingredient.unit"}]
    #total_calories => recipe.total_calories
    #}
