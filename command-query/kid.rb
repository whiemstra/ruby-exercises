class Kid
  def initialize
    @sugar = 0
    @sugar_high = false
  end

  def eat_candy
    @sugar += 5
    if @sugar < 60
      @sugar_high = false
    else
      @sugar_high = true
    end
  end

  def grams_of_sugar_eaten
    @sugar
  end

  def hyperactive?
    @sugar_high
  end
end
