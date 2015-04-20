gem "minitest"
require "minitest/autorun"
require_relative "grandma"

class GrandmaTest < Minitest::Test
  def setup
    @grandma = Grandma.new
  end

  def test_we_can_make_a_grandma
    assert Grandma.new
  end

  def test_grandma_can_respond_to_a_comment
    response = @grandma.respond_to_comment("hello")
    assert_equal "SPEAK UP KID!", response
  end

  def test_grandma_says_what_when_you_say_nothing
    response = @grandma.respond_to_comment("")
    assert_equal "WHAT?", response
  end

  def test_grandma_recognizes_when_you_didnt_say_anything
    assert @grandma.said_nothing?("")
    refute @grandma.said_nothing?("pizza")
  end

  def test_grandma_says_something_almost_intelligible_if_you_shout
    response = @grandma.respond_to_comment("HI GRANDMA")
    assert_equal "NO, NOT SINCE 1946!", response
  end

  def test_grandma_can_tell_when_you_shout
    assert @grandma.shouting?("HI")
    refute @grandma.shouting?("pizza")
    refute @grandma.shouting?("Goodbye")
    refute @grandma.shouting?("")
  end

  def test_grandma_says_leaving_so_soon_the_first_time_you_say_goodbye
    response = @grandma.respond_to_comment("GOODBYE!")
    assert_equal "LEAVING SO SOON!?", response
  end

  def test_grandma_says_bye_the_second_time_you_say_goodbye
    @grandma.respond_to_comment("GOODBYE!")
    response = @grandma.respond_to_comment("GOODBYE!")
    assert_equal "LATER, SKATER!", response
  end

  def test_grandma_is_done_talking_after_two_goodbyes
    refute @grandma.done_talking?
    @grandma.respond_to_comment("GOODBYE!")
    refute @grandma.done_talking?
    @grandma.respond_to_comment("GOODBYE!")
    assert @grandma.done_talking?
  end
end
