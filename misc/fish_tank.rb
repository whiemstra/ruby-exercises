class FishTank
  def initialize(volume)
    @volume = volume
    @water_level = 0
  end
  
  def empty?
    @water_level == 0
  end
  
  def add_water(volume)
    @water_level += volume
  end
  
  def to_s
    "A nice tank of #{@volume} size"
  end
end

my_tank = FishTank.new("20,000 Gallons")
puts "You have a tank: #{my_tank}."

if my_tank.empty?
  puts "Whoa your tank is empty."
else
  puts "You have water!"
end

3.times { my_tank.add_water(5) }
puts "tank is empty? #{my_tank.empty?}"
