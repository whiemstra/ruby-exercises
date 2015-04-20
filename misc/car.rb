# Exercises
#
# Let's think about modeling cars in code. Work through these steps:
#
# 1) Create a Car class and save it in car.rb.
# 2) At the bottom of the file, outside the class definition, write my_car = Car.new to create an instance.
# 3) Run the file from your terminal like ruby car.rb. Observe nothing (boohoo!).
# 4) Add a method to the class named horn. In that method print out the word "BEEEEEP!". Then at the very bottom of the file add my_car.horn.
# 5) Run your file again and observe output (yay!).
# 6) Add a method to your class named drive which takes an argument named distance. When the method is called, have it print out a message like I'm driving 6 miles where 6 is the value passed in for distance.
# 7) Add my_car.drive(12) to the bottom of your file and run it again. Observe two lines of output (double yay!).
# 8) Add an attr_accessor, an externally-accessible attribute, with the name color.
# 9) Add a method named report_color that prints out I am red where red is the value stored in color.
# 10) Add two lines to the bottom of the file: my_car.color = 'purple' and my_car.report_color
# 11) Add an externally-accessible attribute named wheel_count and add a line at the bottom setting it to 18.
# 12) At the bottom of the file, write a line that prints out "This sweet ride is sitting on 18 wheels" where 18 is the value returned from the wheel_count method.
# 13) At the bottom of the file, write a line that creates a second instance of the class my_second_car, and sets the wheel_count to 2. Then write a line that prints "This sweet ride is sitting on 2 wheels". Observer how the two instances have their own instance variables.
# 14) This one is tricky. Add a method named start. If the car has not yet been started, when the method is called it should return "Starting up!". But if the car has previously been started, it should return "BZZT! Nice try, bro.". You'll need to create an instance variable, a method, use an if statement, and return a value.

-----------------------------------------------------------------------------------------------


class Car
  attr_accessor :color, :wheel_count, :start
  @color = :color
  @wheel_count = :wheel_count
  
  def horn
    puts "BEEEEP!"
  end
  
  def drive(distance)
    puts "I'm driving #{distance} miles"
  end
  
  def report_color
    puts "I am #{@color}"
  end
  
  def wheel_count
    puts "This sweet ride is sitting on #{@wheel_count} wheels!"
  end
  
  def start
    if @start == false
      puts "BZZT! Nice try, bro. Car\'s been started"
    else
      puts "Starting up!"
    end
  end
end

my_car = Car.new
my_car.horn
my_car.drive(12)
my_car.color = "purple"
my_car.report_color
my_car.wheel_count = "18"
my_car.wheel_count

my_car.wheel_count = "2"
my_second_car = my_car.wheel_count

my_car.start
my_car.start = false
my_car.start




#If the car has not yet been started, when the method is called it should return "Starting up!". But if the car has previously been started, it should return "BZZT! Nice try, bro.". You'll need to create an instance variable, a method, use an if statement, and return a value.
