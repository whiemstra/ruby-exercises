class Drops
  def initialize
    @drips = 0
  end

  def drip
    @drips += 1
  end

  def count
    @drips
  end
end
