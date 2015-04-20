gem 'minitest'
require 'minitest/autorun'
require_relative 'allergy'

class AllergyTest < Minitest::Test

  def test_one_score_is_that_allergy
    allergy_score = Allergy.new(2)
    assert_equal allergy_score.score, "peanut"
  end






end













#   def test_person_has_no_allergies
#     allergy_test = Allergy.new.allergy_score
#     assert_equal allergy_test, 0
#   end
#
#   def test_has_allergy(allergy_score)
#     allergy = Allergy.new
#     assert_equal allergy, 1
#   end
#
#
# end
