class Santa
  def initialize
    @skinny_santa = true
    @num_of_cookies = 0
  end

  def eats_cookies
    @num_of_cookies += 1
    if @num_of_cookies < 3
      @skinny_santa = true
    else
      @skinny_santa = false
    end
  end

  def fits?
    @skinny_santa
  end
end
