class Ingredient
  attr_reader :name, :unit, :cals

  def initialize(name, unit, calories)
    @name = name
    @unit = unit
    @cals = calories
  end

end
