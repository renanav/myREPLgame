# Write a program that prints the numbers 1 to 100, however:
#
# 1) If the number is a multiple of 3 print "Fizz" instead of the number.
# 2) If the number is a multiple of 5 print "Buzz" instead of the number.
# 3) If the number which are multiples of both 3 and 5 print "FizzBuzz" instead of the number.
def fizzy_bubblech
    (1..100).each do |num| # A range has to be in parenthesis, not brackets
      if num % 3 == 0 && num % 5 == 0
        print "FizzBuzz, "
      elsif num % 5 == 0
        print "Buzz, "
      elsif num % 3 == 0
        print "Fizz, "
      else
        print num.to_s + ", "
      end
    end
end

fizzy_bubblech
