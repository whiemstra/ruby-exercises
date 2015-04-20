# PSEUDOCODE:
# take a single score (key) and return an allergy (value)
#   take the score of 1 and return eggs
#   take the score of 2 and return peanuts
#   take the score of 3 and return eggs and peanuts
#
# take a total score and return the allergies that equal that score

allergies = {"eggs" => 1,
             "peanuts" => 2,
             "shellfish" => 4,
             "strawberries" => 8,
             "tomatoes" => 16,
             "chocolate" => 32,
             "pollen" => 64,
             "cats" => 128
}

class Allergy

  def initialize(score=0)
    @score = score
  end

  def score
    @score
  end

  def list
    @list
  end

  def run!(list)
    input_score = gets.chomp
    #reverse hash so score gives allergy
    list.invert
    #input score # and retrieve allergy
    list[input_score] = value
  end
end

run!(allergies)







# class Allergy
#   attr_reader @allergy_score
#
#   def @allergy_score
#
#   end
# end
#
#
#
#   case
#     when allergy_score
#   end
