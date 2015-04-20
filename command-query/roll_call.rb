class RollCall
  # def initialize
  #   @list = nil
  # end

  def <<(name)
    if @list == nil || name.length > @list.length
      @list = name
    end
  end

  #if the new childs name is longer than longest, replace
  def longest_name
    @list
  end
end
