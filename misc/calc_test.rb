gem "minitest"
require "minitest/autorun"
require_relative "Calculator"

class CalculatorTest < Minitest::Test
  #total starts at zero
  #add
  #substract
  #mulitply
  #divide
  #keeps track of total
  def test_it_starts_with_a_total_of_zero
    puts "first test"
    calc = Calculator.new
    assert_equal 0, calc.total
  end
  
  def test_it_adds
    puts "second test"
    calc = Calculator.new
    assert_equal 15, calc.add(15)
    assert_equal 15, calc.total
  end
  
  def test_it_subtracts
    puts "third test"
    calc = Calculator.new
    assert_equal -6, calc.subtract(6)
    assert_equal -6, calc.total
  end
  
  def test_it_multiplies
    puts "fourth test"
    calc = Calculator.new
    calc.add(2) #so we start with a non-zero total
    assert_equal 0, calc.multiply(6)
    assert_equal 0, calc.total
  end
  
  def test_clear_resets_the_total
    calc = Calculator.new
    calc.add(15), 
    assert_equal 15, calc.total
    calc.clear
    assert_equal 0, calc.total
  end
  
  def test_multiple_operations_in_succession_work
    calc = Calculator.new
    calc.add(15)
    calc.multiply(6)
    assert_equal 90, calc.total
    calc.subtract(79)
    assert_equal 11, calc.total
  end
end
