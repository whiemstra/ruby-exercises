class Teenager
  def initialize
    @sober = false
  end

  def consume_an_alcoholic_beverage
    @sober = true
  end

  def drunk?
    @sober
  end
end
