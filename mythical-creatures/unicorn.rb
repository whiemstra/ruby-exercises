class Unicorn
  def initialize(name, color="white")
    @name = name
    @color = color
  end

  def name
    @name
  end

  def color
    @color
  end

  def white?
    @color == "white"
  end

  def say(says_something)
    "**;* #{says_something} **;*"
  end
end
