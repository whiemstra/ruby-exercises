class Water
  def initialize
    @water_temp = 295
  end

  def heat
    @water_temp += 1
  end

  def temperature
    @water_temp
  end
end
