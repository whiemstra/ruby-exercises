### 2: State Capitals

# You have 2 hashes, one which maps state names to state abbreviations,
# and one which maps state abbreviations to their capital:
#
#                 ```
# states = {"Oregon" => "OR",
#           "Alabama" => "AL",
#           "New Jersey" => "NJ",
#           "Colorado" => "CO"}
#
# capitals = {"OR" => "Salem",
#             "AL" => "Montgomery",
#             "NJ" => "Trenton",
#             "CO" => "Denver"}
# ```
#
# * Level 1: Write some code which given a state name ("Oregon") outputs
# its capital ("Salem")
# * Level 2: Handle the case when a state's information is not known by
#   returning "Unknown"
# * Level 3: Now let's go the other way. Given a capital name ("Denver"),
#                     return the state name for which it is the capital ("Colorado")


---------------------------------------------------------------------------------------


states = {
  "Oregon" => "OR",
  "Alabama" => "AL",
  "New Jersey" => "NJ",
  "Colorado" => "CO"
}

capitals = {
  "OR" => "Salem",
  "AL" => "Montgomery",
  "NJ" => "Trenton",
  "CO" => "Denver"
}
#Level 3
reverse_capitals = capitals.invert
puts reverse_capitals.inspect
reverse_states = states.invert
puts reverse_states.inspect

capital_name = gets.chomp
if reverse_capitals.has_key?(capital_name)
  value = reverse_capitals[capital_name]
  puts reverse_states[value]
else
  puts "NOO!!"
end


#Level 1
code = states["Oregon"]
puts capitals[code]

state_abbv = states["Alabama"]
puts capitals[state_abbv]

state_abbv = states["Colorado"]
puts capitals[state_abbv]

state_abbv = states["New Jersey"]
puts capitals[state_abbv]

#Level 2
state_name = gets.chomp
if states.has_key?(state_name)
  code = states[state_name]
  puts capitals[code]
else
  puts "Unknown"
end
