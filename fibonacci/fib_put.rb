
class FibOutput
  attr_reader :num_el, :el_per_row
  def initialize(num_el, el_per_row)
    @num_el = num_el
    @el_per_row = el_per_row
    @fib = [0,1]
  end

  def initial_sequence
    @fib = [0,1]
  end

  def sequence
    fib = initial_sequence
    @quantity = 2
    until @quantity == 15
      new_digit = fib[-2] + fib[-1]
      @quantity += 1
      fib << new_digit
    end
  end

  def output
    padding = @fib[-1].to_s.length + 1
    @fib.map! { |n| n.to_s.rjust(padding, " ")}
    @fib.each_slice(5) { |x|
      puts x.join(" ")
    }
  end
end

FibOutput.new(ARGV[0], ARGV[1]).output
