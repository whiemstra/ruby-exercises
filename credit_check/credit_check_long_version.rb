card_number = "4929735477250543"
valid = false

def credit_check(cc_number)
  a = cc_number[-1].to_i
    if a > 9
      aa = (a-9)
    else
      aa = a
    end
  b = ((cc_number[-2]).to_i*2)
    if b > 9
      bb = (b - 9)
    else
      bb =b
    end
  c = cc_number[-3].to_i
    if c > 9
      cc = (c-9)
    else
      cc = c
    end
  d = ((cc_number[-4]).to_i*2)
    if d > 9
      dd = (d-9)
    else
      dd = d
    end
  e = cc_number[11].to_i
    if e > 9
      ee = (e-9)
    else
      ee = e
    end

  f = ((cc_number[10]).to_i*2)
    if f > 9
      ff = (f-9)
    else
      ff = f
    end

  g = cc_number[9].to_i
    if g > 9
      gg = (g-9)
    else
      gg = g
    end

  h = ((cc_number[8]).to_i*2)
    if h > 9
      hh = (h-9)
    else
      hh = h
    end

  i = cc_number[7].to_i
    if i > 9
      ii = (i-9)
    else
      ii = i
    end

  j = ((cc_number[6]).to_i*2)
    if j > 9
      jj = (j-9)
    else
      jj = j
    end

  k = cc_number[5].to_i
    if k > 9
      kk = (k-9)
    else
      kk = k
    end

  l = ((cc_number[4]).to_i*2)
    if l > 9
      ll = (l-9)
    else
      ll = l
    end

  m = cc_number[3].to_i
    if m > 9
      mm = (m-9)
    else
      mm = m
    end
  n = ((cc_number[2]).to_i*2)
    if n > 9
      nn = (n-9)
    else
      nn = n
    end
  o = cc_number[1].to_i
    if o > 9
      oo = (o-9)
    else
      oo = o
    end
  p = ((cc_number[0]).to_i*2)
    if p > 9
      pp = (p-9)
    else
      pp = p
    end
  pp + oo + nn + mm + ll + kk + jj + ii + hh + gg + ff + ee + dd + cc + bb + aa
end

encrypted_cc_num = credit_check(card_number)
puts encrypted_cc_num
if (encrypted_cc_num % 10) == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end

#SAMPLE DATA
# Valid: (1)5541808923795240, (6)4024007136512380, (4)6011797668867828
# Invalid: (5)5541801923795240, (2)4024007106512380, (3)6011797668868728

card_number1 = "5541808923795240"
card_number2 = "4024007106512380"
card_number3 = "6011797668868728"
card_number4 = "6011797668867828"
card_number5 = "5541801923795240"
card_number6 = "4024007136512380"

encrypted_cc_num = credit_check(card_number1)
if (encrypted_cc_num % 10) == 0
  puts "CC#1: The number is valid!"
else
  puts "CC#1: The number is invalid!"
end

encrypted_cc_num = credit_check(card_number2)
if (encrypted_cc_num % 10) == 0
  puts "CC#2: The number is valid!"
else
  puts "CC#2: The number is invalid!"
end

encrypted_cc_num = credit_check(card_number3)
if encrypted_cc_num % 10 == 0
  puts "CC#3: The number is valid!"
else
  puts "CC#3: The number is invalid!"
end

encrypted_cc_num = credit_check(card_number4)
if encrypted_cc_num % 10 == 0
  puts "CC#4: The number is valid!"
else
  puts "CC#5: The number is invalid!"
end

encrypted_cc_num = credit_check(card_number5)
if encrypted_cc_num % 10 == 0
  puts "CC#5: The number is valid!"
else
  puts "CC#5: The number is invalid!"
end

encrypted_cc_num = credit_check(card_number6)
if encrypted_cc_num % 10 == 0
  puts "CC#6: The number is valid!"
else
  puts "CC#6: The number is invalid!"
end


# take CC number,
#     starting with 2nd to last digit, double every other number
# take those numbers, and if they are > 9, - 9, otherwise keep
# add all numbers together
#   if % 10 == 0
#     valid
#   else
#     invalid
#   end
# encrypted_cc_num
