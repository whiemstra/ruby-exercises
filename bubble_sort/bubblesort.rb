# sequence = [4, 3, 5, 0, 1]
# # worst_sequence = [0,1,2,3,4,5].reverse
# @swaps = 0
#
# def bubble_sort(list)
#   sorted = false
#   until sorted do
#     swaps_this_run = 0
#     #sorted = true?????????????????????? while statement?
#     (list.count - 1).times do |i|
#       if list[i] > list[i + 1]
#         list[i], list[i + 1] = list[i + 1], list[i]
#         swaps_this_run += 1
#         #@swaps += 1
#       end
#     end
#     if swaps_this_run == 0
#       sorted = true
#     else
#       @swaps += swaps_this_run
#     end
#   end
#   puts "Final result: #{list}"
#   puts "Swaps: #{@swaps}"
# end
#
# bubble_sort(sequence)
# bubble_sort = MySort.new([1,2,3,4,5])
# bubble_sort.run!
# bubble_sort.number_of_swaps # => 7

class MySort

  def initialize(list)
    @list = list
    @swaps = 0
  end

  def list
    @list
  end

  def number_of_swaps
    @swaps
  end

  def run!
    # if list.empty?
    #   sorted = true
    # else
    #   sorted = false
    # end
    sorted = false
    until sorted do
      swaps_this_run = 0
      # (list.count - 1).times do |i|
      #
      #   if list[i] > list[i + 1]
      #     list[i], list[i + 1] = list[i + 1], list[i]
      #     swaps_this_run += 1
      #     # @swaps += 1
      #   end
      #
      # end

      # start_position = 0
      start_position = 0
      # until start_position equals list.length-1
      until start_position == (list.length - 1)
        # if we swap, we set start_position back to 0
        if list[start_position] > list[start_position+1]
          list[start_position], list[start_position + 1] = list[start_position + 1], list[start_position]
          swaps_this_run += 1
          start_position = 0
        else # if no swap, we set start_position += 1
          start_position += 1
        end
        # end
      end

      if swaps_this_run == 0
        sorted = true
      else
        @swaps += swaps_this_run
      end
    end
    return @list
  end
end

bubble_sort = MySort.new([2,3,1,0,4,5])
print bubble_sort.run!


