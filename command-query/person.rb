class Person
  def initialize
    @birthday = 0
  end

  def age
    @birthday
  end

  def happy_birthday
    @birthday += 1
    32.times do |age|

    end
    assert_equal 33, person.age
  end

end
