class Floor
  def initialize
    @num_of_washes = 0

  end

  def dirty? #QUERY
    if @num_of_washes == 1
      false
    else
      true
    end
  end

  def wash #COMMAND
    @num_of_washes += 1
  end
end
