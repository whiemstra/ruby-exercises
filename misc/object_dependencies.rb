class ScreenPrinter

end

class Fibber
  def initialize()
  end


end

class FilePrinter

end
screen_printer = ScreenPrinter.new
fibber = Fibber.new(screen_printer)
fibber.print(10) # => prints the first 10 numbers of the fibonacci sequence to
#    the screen separated by a single space
file_printer = FilePrinter.new("output.txt")
fibber = Fibber.new(file_printer)
fibber.print(10) # => prints the first 10 number of the fibonacci sequence to
#    a file named 'output.txt' separated by a single space
