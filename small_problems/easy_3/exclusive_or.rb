
def xor?(condition1, condition2)
  if condition1 == true && condition2 == true
    puts false
  elsif condition1 == false && condition2 == false
    puts false
  else
    puts true
  end
end

xor?(5.odd?, 4.even?)
xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.even?, 4.odd?)
