x = 10
puts "x if #{x}"
x += 20
puts "x is now #{x}"

def print_double_value(x)
  orig = x
  x = x*2
  puts "double the value of #{orig} is #{x}"
  puts "inner x is now: #{x}"
end
print_double_value(x)
puts "outer x is still #{x}"

a = 4
  def combine_variables(x)
    puts "inner x is #{x}"
    puts "and outer b is #{b}"
  end

def b
  12
end
combine_variables(a)

creatures = ["IndustrialRaverMonkey", "DwarvenAngel", "TeethDeer"]
hero = "Dwemthy"

def battling_technique
  ["heroically", "clumsy", "cleverly"].sample
end

creatures. each do |creature|
  puts "#{hero} battles #{creature} #{battling_technique}"
end
