class Beers
  def initialize
    @beers_inventory = 99
  end

  def take_one_down_and_pass_it_around
    @beers_inventory -= 1
  end

  def restock
    @beers_inventory = 99
  end

  def inventory
    @beers_inventory
  end

end
