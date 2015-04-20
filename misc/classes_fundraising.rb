class Project
  def initialize(name, initial, goal)
    @name = name.upcase
    @initial_funding = initial
    @goal = goal
  end
  
  def to_s
    "Project #{@name} has #{@initial_amt} in funding towards a goal of #{@goal}."
  end
  
  def lost_funds
    @initial_funding -= 25
    puts "Project #{@name} lost some funds!"
  end
  
  def got_funds
    @initial_funding += 25
    puts "Project #{@name} got some funds!"
  end
end

project1 = Project.new("lmn", 500, 3000)
puts project1

project2 = Project.new("xyz", 25, 75)
puts project2

project1.lost_funds
project2.got_funds

puts project1
puts project2

def time
  current_time = Time.new
  current_time.strftime("%A, %B %d, %Y")
end

def project_listing(name, funding=0)
  "#{name} has $#{funding} in funding as of #{time}."
end

puts project_listing("Project ABC", 1000)
puts project_listing("Project LMN", 500)
puts project_listing("Project XYZ", 25)
puts project_listing("Project TBD")





































