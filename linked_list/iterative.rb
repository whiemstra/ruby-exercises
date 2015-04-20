require_relative 'node'

class Iteration
  attr_reader :head

  def count
    return 0 if head.nil?

    node_count = 1
    current = head
    while current.next
      current = current.next
      node_count += 1
    end
    return node_count
  end

  def push(data)
    if @head == nil
      @head = Node.new(data)
    else @head != nil
      new_node = Node.new(data)
      tail = @head
      until tail.next == nil
        tail = tail.next
      end
      tail.next = new_node
    end
  end

  def tail
    tail = @head
    until tail.next == nil
      tail = tail.next
    end
    return tail.data
  end

  def pop
    tail = @head
    until tail.next == nil
      tail = tail.next
    end
    return tail.data
  end
    
end
