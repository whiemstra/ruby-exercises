class MilkBottle

  def initialize
    @milk_level = 10
  end

  def full? #QUERY
    if @milk_level < 10
      false
    else
      true
    end
  end

  def spill #COMMAND
    @milk_level -= 1
  end
end
