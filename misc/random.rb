class A
  def initialize(string, number)
    @string = string
    @number = number
  end

  def to_s
    "In to_s:\n   #{@string}, #{@number}\n"
  end
  def to_a
    "In to_a:\n   #{@string}, #{@number}\n"
  end
end
a = A.new("hello world", 5)
puts a
puts a.to_a


class Playlist
  
end
