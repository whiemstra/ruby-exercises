gem 'minitest'
require 'minitest/autorun'
require_relative 'allergy'

class AllergyTest < Minitest::Test
  def check_for_egg_allergy
    allergy_test = Allergy.new.allergy_score
    assert_equal 1, allergy_test
  end
  def check_for_allergies(number)


  end
end
