
class CreditCheck

  def run!(cc_num)
    digits = []
    cc_num.split('').reverse.each_with_index do |num, index|            #cc_num.split('').reverse.each do |num, index|
      digits << num.to_i if index%2 == 0
      digits << (num.to_i*2) if index%2 == 1
    end

    # digits.each_with_index do |num,index|
    #   num = (num.to_i - 9) if num.to_i > 9
    #   digits[index] = num
    #   puts digits.inspect

    digits.map! do |num|
      if num > 9
        num - 9
      else
        num
      end
    end

    total = digits.inject(:+)      #{ |sum, n| sum + n}
    if total % 10 == 0
      puts "Credit Card is valid!!"
    else
      puts "Invalid credit card mothafucka!"
    end
  end
end

credit_check = CreditCheck.new
puts credit_check.run!("86868")

credit_check = CreditCheck.new
puts credit_check.run!("4929735477250541")
