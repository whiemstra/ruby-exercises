### 1: Age Ordering
#
# You have age data for a group of people:
#
#               ```
# data = [
#   ['Frank', 33],
#   ['Stacy', 15],
#   ['Juan', 24],
#   ['Dom', 32],
#   ['Steve', 24],
#   ['Jill', 24]
# ]
# ```
#
#         * Level 1: Write code that'll output the names (and only the names) in order by
# ascending age
# * Level 2: Output the name with the age, like `Juan (24)`
# * Level 3: If there are multiple people tied with the same age, put them in alphabetical
# order
# * Level 4: Write code to automatically build a hash with the age as the key and
# an array of names as the value (all the people who are that age). e.g.
# `{24 => ['Juan', 'Steve', 'Jill']...}`


students = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

#Level 1
students.sort_by! { |item| item[1]}
#students.sort_by! { |name, age| age }
students.each do |item|
  puts "#{item[0]}"
end
puts "----"
#LEVEL 2
students.each do |student|
  puts "#{student[0]} (#{student[1]})"
end
puts "----"
#Level 3
students.sort_by! { |student| [student[1],student[0]]}
students.each do |student| 
  puts "#{student[0]} (#{student[1]})"
end
puts "----"
#Level 4
hash_by_age = {}
students.each do |name, age|
  if hash_by_age[age].nil?
    #age: 33, name: "Frank"
    hash_by_age[age] = [name]
  else
    #hash_by_age[33]: ["Frank"]
    hash_by_age[age] << name
  end
end
puts hash_by_age


stuff = students.group_by do |element|
  element.last #24
end.each do |key, value|
  value.each do
    |el| el.pop
  end.flatten!
end

puts stuff


