
@quantity = 2
  def fibbonacci(fib)
    new_digit = fib[-2] + fib[-1]
    @quantity += 1
    fib << new_digit
  end

  fib = [0,1]
  until @quantity == 15
    fibbonacci(fib)
  end

  padding = fib[-1].to_s.length + 1
  fib.map! { |n| n.to_s.rjust(padding, " ")}
  fib.each_slice(5) { |x|
    puts x.join(" ")
  }



# longest_length = fib.last.to_s.length + 1
#
# fib.each_slice(5) { |x|
#   #puts x.inspect
#   #printf("%4d %4d %4d %4d %4d\n", x[0], x[1], x[2], x[3], x[4])
#   printf("%#{longest_length}d %#{longest_length}d %#{longest_length}d %#{longest_length}d %#{longest_length}d\n", x[0], x[1], x[2], x[3], x[4])
# }

# fib.each_slice(5) { |x| "%4d" % x}


