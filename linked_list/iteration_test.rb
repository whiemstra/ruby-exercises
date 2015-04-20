gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'
require_relative 'iteration'

class IterationTest < Minitest::Test

  def test_it_exists
    assert Iteration
  end

  def test_head_not_incl_in_count
    list = Iteration.new
    assert_equal 0, list.count
    refute list.head
  end

  def test_a_node_can_be_added
    list = Iteration.new
    assert_equal 0, list.count
    list.push("hello")
    assert_equal "hello", list.head.data
    assert_equal 1, list.count
  end

  def test_multiple_nodes_are_added_to_end
    list = Iteration.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal "hello", list.head.data
    assert_equal "!", list.tail
    assert_equal 3, list.count
  end

  def test_adding_multiple_elements_increases_count
    list = Iteration.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal 3, list.count
  end

  def test_it_can_access_the_tail
    list = Iteration.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal "!", list.tail
  end

  def test_it_can_pop_tail_node
    list = Iteration.new
    list.push("hello")
    list.push("world")
    assert_equal 2, list.count
    assert_equal "world", list.pop
    assert_equal 1, list.count
  end

  def test_access_to_specific_node
    list = Iteration.new
    list.push("hello")
    list.push("world")
    list.push("!")
    assert_equal "world", list.find(1)
  end

  def test_it_can_shift_the_list_with_a_new_element
    skip
    list = Iteration.new
    list.push("hello")
    list.push("world")
    assert_equal 2, list.count
    list.shift("Yo")
    assert_equal 3, list.count
    assert_equal "Yo", list.head.data
  end

  def test_a_node_can_be_inserted_into_any_position
    skip
  end

  def test_linked_list_count_is_kept_track
    skip
  end

end
