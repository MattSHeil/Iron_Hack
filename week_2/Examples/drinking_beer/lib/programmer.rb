require_relative('beerable')

class Programmer 
  include Beerable

  def initialize(name, favorite_language)
    @name = name    	
    @favorite_language = favorite_language
  end

  def drink_favorite_drink
    drink_beer
  end
end