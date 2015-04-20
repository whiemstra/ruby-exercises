gem 'minitest'
require 'minitest/autorun'
require_relative 'bubblesort'

class MySortTest < Minitest::Test

  def test_new_sets_default_values
    my_sort_obj = MySort.new([1])
    assert_equal my_sort_obj.list, [1]
    assert_equal my_sort_obj.number_of_swaps, 0
  end

  def test_run_method_actually_sorts
    my_sort_obj = MySort.new([7,-4,1])
    my_sort_obj.run!
    assert_equal my_sort_obj.list, [-4,1,7]

    long_sort = MySort.new([5,4,3,2,1])
    long_sort.run!
    assert_equal long_sort.list, [1,2,3,4,5]
    assert_equal long_sort.number_of_swaps, 10
    refute_equal long_sort.number_of_swaps, 0
  end

  def test_run_method_works_with_empty_array
    empty_array = MySort.new([])
    empty_array.run!
    assert_equal empty_array.list, []
    assert_equal empty_array.number_of_swaps, 0
  end

  def test_run_method_works_with_presorted_array
    presorted_array = MySort.new([1,2,3])
    presorted_array.run!
    assert_equal presorted_array.list, [1,2,3]
    assert_equal presorted_array.number_of_swaps, 0
  end

  def test_number_of_swaps_with_array_of_one
    array_of_one = MySort.new([3])
    array_of_one.run!
    assert_equal array_of_one.number_of_swaps, 0
  end
end
