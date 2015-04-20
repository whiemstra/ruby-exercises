class Music
  def initialize
    @volume = false
  end

  def turn_up
    @volume = true
  end

  def loud?
    @volume
  end
end
