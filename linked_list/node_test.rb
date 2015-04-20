gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node
  end

  def test_node_has_an_attribute
    node = Node.new('hello')
    assert_equal 'hello', node.data
  end

end
