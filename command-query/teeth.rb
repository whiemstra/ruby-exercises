class Teeth
  def initialize
    @clean_teeth == false
  end

  def brush
    @clean_teeth = true
  end

  def clean?
    @clean_teeth
  end
end
