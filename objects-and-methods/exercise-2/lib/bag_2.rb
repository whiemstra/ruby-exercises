class Bag
  def initialize
    @bag = []
    @taken = []
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

  def <<(candy)
    @bag.push(candy)
  end

  def contains?(item)
    @bag.any? do |candy|
      candy.type == item
    end
  end

  def grab(candy)
   #@bag.slice!(candy) if @bag.include?(candy)??????
   x = @bag.detect{ |name| name.type == candy}
   @bag.delete(x)
  end

  def take(num = 1)
    @bag.pop(num)
  end
end
