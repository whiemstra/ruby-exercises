class Baby
  def initialize
    @got_no_sleep = true
  end

  def nap
    @got_no_sleep = false
  end

  def tired?
    @got_no_sleep
  end
end
