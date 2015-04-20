class LeatherChair
  def initialize
    @exposed = false
  end

  def faded?
    if @exposed == true
      true
    else
      false
    end
  end

  def expose_to_sunlight
    @exposed = true
  end
end
