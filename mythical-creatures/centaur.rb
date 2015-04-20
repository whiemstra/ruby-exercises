class Centaur
  def initialize(name, horsebreed)
    @name = name
    @horsebreed = horsebreed
    @cranky_count = 0
    @standing = true
  end

  def name
    @name
  end

  def breed
    @horsebreed
  end

  def shoot
    get_crankier
    if cranky?
      refuse
    else
      "Twang!!!"
    end
  end

  def refuse
    "NO!"
  end

  def run
    get_crankier
    if cranky? # is the centaur...cranky?
      refuse
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    #false
    if @cranky_count > 2
      true
    end
  end

  def get_crankier
    @cranky_count += 1
  end

  def standing?
    @standing
  end

  def sleep
    refuse
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

end
