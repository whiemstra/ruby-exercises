class PizzaOven
  def cook (crust_type = dough_type, temp = temperature)
    puts "cooking #{crust_type} pizza at #{temp}"
  end
  # def cook(crust_type = "Thick crust", temp = "415 degrees")
  #   puts "cooking #{crust_type} pizza at #{temp}"
  # end

  def temperature
    "400 degrees"
  end

  def dough_type
    "New Haven Style"
  end
end

oven = PizzaOven.new
oven.cook("sicilian", "450 degrees")    #uses arguments
oven.cook(oven.dough_type, oven.temperature)   #uses the defined methods inside
oven.cook                               #uses default values


oven.cook("SICILIAN", "4000 degrees")
