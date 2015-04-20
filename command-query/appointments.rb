class Appointments

  def initialize
    @earliest = nil
  end

  def earliest
    @earliest
  end

  def at(time)
    if @earliest == nil
      @earliest = time
    else
      if time < @earliest
        @earliest = time
      end
    end
  end
end


