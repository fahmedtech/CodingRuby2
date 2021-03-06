#Faizan Ahmed
#IT-212 
#9/22/2015
#Project 2 - Amicable Numbers

#Returns sum of the factors    
def sum_factors(n)
  sum = 0
  for factor in 1..(n / 2)
    if n % factor == 0
      sum += factor
    end
  end
  return sum  
end

#if Amicable then print!
print "Enter upper bound number to find Amicables:"
upper_bound = gets.chomp.to_i
for n in 1..upper_bound
	sum1 = sum_factors(n) 
	sum2 = sum_factors(sum1)
  if n == sum2 && n < sum1  #if Amicable!
    print "(#{sum2}, #{sum1})\n"
  end
end


# 220 and 284 are amicable
# 1184 and 1210 are amicable
# 2620 and 2924 are amicable
# 5020 and 5564 are amicable
# 6232 and 6368 are amicable