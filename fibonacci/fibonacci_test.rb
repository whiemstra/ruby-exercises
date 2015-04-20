gem 'minitest'
require 'minitesst/autorun'
require_relative 'fibonacci'

class FibonacciTest < Minitest::Test
  def test_fibber_exist
    assert Fibber
  end

  #Lvl 1 is to return 15 numbers of the Fib sequence, jagged output

  def test_we_can_output_some_numbers
    first_fifteen = "0 1 1 2 3/n5 8 13 21 34/n55 89 144 233 377"
    assert_equal first_fifteen, Fibber.new.series(15)
  end


end
