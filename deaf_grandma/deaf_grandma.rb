class Grandma
  def initialize
    @goodbye_count = 0
  end
  
  def respond_to_comment(comment)
    if say_nothing?(comment)
      "WHAT?!"
    elsif comment == "GOODBYE!"
      @goodbye_count += 1   
      if @goodbye_count > 0
        "LATER SKATER"
      else
        @goodbye_count += 1
        "LEAVING SO SOON?"
      end
    elsif shouting?(comment)
      "NO, NOT SINCE 1946!"
    else
      "SPEAK UP KID!"
    end
  end
  
  def say_nothing?(comment)
    comment.empty?
  end
  
  def shouting?(comment)
    said_something(comment) && comment != comment.upcase == comment
  end
  
  def done_talking?
    @goodbye_count >1
  end 
end


#2nd way of doing:
#
# ready_to_quit = false
# puts "HEY KID!"
#
# goodbye = 0
# input = gets.chomp
# until ready_to_quit
#   if input == ""
#     puts "WHAT?"
#   elsif input == input.downcase
#     puts "SPEAK UP KID!"
#   elsif input == input.upcase
#     puts "NO, NOT SINCE 1946"
#   elsif input == "GOODBYE!"
#     puts "LEAVING SO SOON?"
#     goodbye += 1
#   end




























