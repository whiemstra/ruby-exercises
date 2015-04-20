class Light
  def initialize
    @switch == false
  end

  def turn_on
    @switch = true
  end

  def on?
    @switch
  end
end
