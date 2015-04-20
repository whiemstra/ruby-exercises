gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'
require_relative 'recursion'

class RecursionTest < Minitest::Test

  def test_it_exists
    assert Recursion
  end

  def test_head_not_incl_in_count
    list = Recursion.new
    assert_equal 0, list.count
    refute list.head
  end

  def test_a_node_can_be_added
    list = Recursion.new
    assert_equal 0, list.count
    list.push("hello")
    assert_equal "hello", list.head.data
    assert_equal 1, list.count
  end

  def test_multiple_nodes_are_added_to_end
    list = Recursion.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal "hello", list.head.data
    assert_equal "!", list.tail
    assert_equal 3, list.count
  end

  def test_adding_multiple_elements_increases_count
    list = Recursion.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal 3, list.count
  end

  def test_it_can_access_the_tail
    list = Recursion.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal "!", list.tail
  end

  def test_it_can_pop_tail_node
    list = Recursion.new
    list.push("hello")
    list.push("world")
    assert_equal 2, list.count
    assert_equal "world", list.pop
    assert_equal 1, list.count
  end

  def test_access_to_specific_node
    list = Recursion.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal "world", list.find(1)
  end
end

