class Player
  attr_reader :name, :health

  def initialize(name, health = 100)
    @name = name
    @health = health
  end

  def reduce_health(amount)
    @health -= amount
  end
  
end
