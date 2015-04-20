class Grandma
  # returns true if the string
  # is all caps
  # otherwise returns false
  def shouted?(string)
    string == string.upcase
  end

  # returns true if you say "GOODBYE"
  # otherwise returns false
  def saying_goodbye?(string)
    string == "GOODBYE"
  end

  def said_nothing?(string)
    string.empty?
  end

  def converse
    goodbye = 0
    until goodbye > 1 do
      response = gets.chomp
      if saying_goodbye?(response)
        goodbye = goodbye + 1
        if goodbye < 2
          puts "LEAVING SO SOON?"
        end
      elsif said_nothing?(response)   #response.empty?
        puts "WHAT?!"
      elsif shouted?(response)
        puts "NO, NOT SINCE 1946"
      else
        puts "SPEAK UP, KID!"
      end
    end
    puts "LATER, SKATER!"
  end
end
grandma = Grandma.new
grandma.converse


# class Grandma
#   def initialize
#     @goodbye_count = 0
#   end
#
#   def respond_to_comment(comment)
#     if said_nothing?(comment)
#       "WHAT?"
#     elsif comment == "GOODBYE!"
#       @goodbye_count += 1
#       if done_talking?
#         "LATER, SKATER!"
#       else
#         "LEAVING SO SOON!?"
#       end
#     elsif shouting?(comment)
#       "NO, NOT SINCE 1946!"
#     else
#       "SPEAK UP KID!"
#     end
#   end
#
#   def said_nothing?(comment)
#     comment.empty?
#   end
#
#   def said_something?(comment)
#     !said_nothing?(comment)
#   end
#
#   def shouting?(comment)
#     said_something?(comment) && comment.upcase == comment
#   end
#
#   def done_talking?
#     @goodbye_count > 1
#   end
# end
