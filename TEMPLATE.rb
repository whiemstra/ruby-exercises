class Song
  attr_reader :name #automatically creates the @name, which makes it a class variable and can be shared among all objects of the class
  #def name
  # @name
  #end
  
  attr_writer :name
  #def name=(new_name)
  # @name = new_name
  #end
  
  attr_accessor :name
  #attr_reader :name
  #attr_writer :name
  
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @class_variable #can be shared among all objects of the class
  end
  
  def to_s
      "Song: #{@name}--#{@artist} (#{@duration})"
  end
  
  
  def instance_method(parameters)
    @instance_variable #only applies to this particular method
  end
  
  def Song.class_method #defined by placing the class name (Song) in front
  end
  
  if boolean_expression #There are two boolean values: true and false.
    #do something
  elsif boolean_expression_2
    #do something different
  else
    #do something else
  end
  
  expressions: ==, !=, >, <, >=, <= 
  example:
    x = 5
    if x > 5
      print "I am big!"
    elsif x == 5
      print "I am medium!"
    else
      print "I am small!"
    end

    I am medium!

end





class MyClass
    @one = 1
    def do_something
      @one = 2
    end
    def output
      puts @one
    end
  end
  instance = MyClass.new
  instance.output
  instance.do_something
  instance.output