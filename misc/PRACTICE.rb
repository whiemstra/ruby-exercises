num = [1,2,3,4,5]
puts num.reduce(:+)

# students = [
#   ['Frank', 33],
#   ['Stacy', 15],
#   ['Juan', 24],
#   ['Dom', 32],
#   ['Steve', 24],
#   ['Jill', 24]
# ]
#
# #Level 1
# students.sort_by! { |name, age| age }
# students.each do |name, age|
#   puts "#{name}"
# end
#
# puts "#{name} (#{age})"
# students.sort_by! { |name, age| age,name}
# students.each do |name, age|
#   puts "#{name} (#{age})"
# end

# #{student[0]} (#{student[1]})"
# end
# puts "----"
# #Level 4
# hash_by_age = {}
# students.each do |name, age|
#   if hash_by_age[age].nil?
#     #age: 33, name: "Frank"
#     hash_by_age[age] = [name]
#   else
#     #hash_by_age[33]: ["Frank"]
#     hash_by_age[age] << name
#   end
# end
# puts hash_by_age
#
#
# stuff = students.group_by do |element|
#   element.last #24
# end.each do |key, value|
#   value.each do
#   |el| el.pop
#   end.flatten!
# end

# puts stuff
