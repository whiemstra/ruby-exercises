class Tire
  def initialize
    @tire_use = 0
  end

  def blow_out
    @tire_use += 1
  end

  def flat?
    if @tire_use == 0
      false
    else
      "I ran over a nail!"
    end
  end
end
