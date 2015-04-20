require_relative 'node'

class Recursion
  attr_reader :head
  attr_accessor :next

  def count(node=head)
    return 0 if head.nil?
    if node.next != nil
      return count(node.next) + 1
    else
      return 1
    end
  end

  def push(data, tail_node=head)
    if @head.nil?
      @head = Node.new(data)
    elsif tail_node.next.nil?
      tail_node.next = Node.new(data)
    else
      push(data, tail_node.next)
    end
    return data
  end

  # def push(data)
  #   if @head == nil
  #     @head = Node.new(data)
  #   else @head != nil
  #     new_node = Node.new(data)
  #     # tail = @head
  #     # until tail.next == nil
  #     #   tail = tail.next
  #     # end
  #     tail_node.next = new_node
  #   end
  # end

  def tail
    return tail_node.data
  end

  def tail_node(node=head)
    if node.next == nil
      return node
    else
      return tail_node(node.next)
    end
  end

  def pop(tail=head, prev=nil)
    if tail.next == nil
      if prev != nil
        prev.next = nil
      else
        @head = nil
      end
      return tail.data
    else
      return pop(tail.next, tail)
    end
  end

  def find(position, node=head)
    if position == 0
      return node.data
    else
      find(position - 1, node.next)
    end
  end
end
