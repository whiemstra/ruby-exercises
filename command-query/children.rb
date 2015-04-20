class Children
  # def initialize
  #   @eldest = nil
  # end

  def <<(child)
    if @eldest == nil || child.age > @eldest.age
      @eldest = child
    end
    # if @eldest == nil
    #   @eldest = child
    # elsif child.age > @eldest.age
    #   @eldest = child
    # end
  end

  #if child is the only one, we set him to eldest
  #if we have an eldest, is new child older than eldest?
  #if yes, then set eldest to new child

  def eldest
    @eldest
  end
end
