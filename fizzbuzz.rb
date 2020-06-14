##################
### FIZZBUZZ 1 ###
##################

##
# fizzbuzz1 is the fastest running implementation I tried.
# However, it isn't a particularly sustainable piece of code, if the game expands to new values.
##

def fizzbuzz1(n)
  if n % 3 == 0 && n % 5 ==0
    return "FizzBuzz"
  elsif n % 3 == 0
    return "Fizz"
  elsif n % 5 == 0
    return "Buzz"
  else
    return n
  end
end


puts "*** Demonstrating fizzbuzz1 ***"

for i in 1..100
  puts fizzbuzz1(i)
end



##################
### FIZZBUZZ 2 ###
##################

##
# fizzbuzz2 is the most flexible and sustainable approach I could think of.
# Rather than hard-coding functions with the desired values, the values are placed in a hash and can then be iterated over.
# This is much slower than fizzbuzz1, as it has to evaluate so many more expressions as it iterates the hash for every input.
# However adding a new value into the game requires nothing more than making a new entry in the hash.
# This also makes it easily adaptable to be dynamic (e.g. accepting user input) though I've not implemented that here.
##

def fizzbuzz2(n,instructions)
  result = ""
  instructions.each_pair { |divisor, text| 
    result += text if n % divisor == 0
  }
  if result == ""
    return n
  else
    return result
  end
end

puts "*** Demonstrating fizzbuzz2 ***"

instructions = { 3 => "Fizz", 5 => "Buzz" }
for i in 1..100
  puts fizzbuzz2(i,instructions)
end

puts "Demonstrating the addition of a new term to the game."

instructions[7] = "Zapdoodle"
for i in 1..105
  puts fizzbuzz2(i,instructions)
end
