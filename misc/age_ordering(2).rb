students = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

#Level 1
students.sort_by! { |name,age| age}
students.each do |name,age|
  puts "#{name}!"
end

puts "----"

#Level 2
students.each do |name,age|
  puts "#{name} (#{age})"
end

puts "----"

#Level 3
students.sort_by! { |name,age| [age,name]}
students.each do |name,age|
  puts "#{name} (#{age})!"
end

puts "----"

#Level 4
