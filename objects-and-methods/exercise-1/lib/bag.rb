class Bag
  def initialize
    @bag = []
  end

  def empty?
    @bag.empty?
  end

  def count
    @bag.count
  end

  def candies
    @bag
  end

  def first
    @bag[0]
  end

  def contains?(type)
    @bag.any? do |candy|
      candy.type == type
    end
  end

  def <<(candy)
    @bag << candy
  end
end
