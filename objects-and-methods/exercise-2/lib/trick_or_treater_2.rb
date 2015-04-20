class TrickOrTreater
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
    @sugar = []
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def empty?
    @bag.empty?
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat(num = 1)
    #@bag.candies.pop
    x = bag.take(num)
    x.each { |el| @sugar_level += el.sugar}

    #@sugar_level += @bag.sugar
  end

  def sugar_level
    @sugar_level
  end
end
