class Adult

  def initialize
    @beer_counter = 0
  end

  def sober?
      if @beer_counter == 0
        true #"Adult should really be sober right now."
      elsif @beer_counter == 1
        true #"Still sober."
      elsif @beer_counter == 2
        true #"Not drunk yet."
      else
        false
      # elsif @beer_counter == 3
      #   "Yeah, OK. The adult is drunk."
      # elsif @beer_counter == 4
      #   "The adult doesn't get more sober from drinking more."
      end
  end

  def consume_an_alcoholic_beverage
    @beer_counter += 1
  end
end
