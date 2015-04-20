# Define a Node class, holds the following:
#    => value: stores the value of the current node.
#    => next  : stores the next Node in the Linked List.

class Node
  attr_accessor :data, :next

  def initialize(data=nil)
    @data = data
    @next = nil
  end


end
