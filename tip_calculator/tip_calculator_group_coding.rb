def line
  puts"~" * 50
end

  line
def tipCalculator
  puts "How much is your bill?"
  bill = gets.chomp.to_f
  line

  puts """
        What percentage would you like to tip?
        Common tips are
        10%
        15%
        20%
        Custom ammount
        """

     percentage = gets.chomp
  line

  puts "How many people are at the table?"
  party = gets.chomp
  line
            line
        puts    """
            Ruby Diner
            Burgers, Fries, Shakes
            """
  tip = bill.to_f * (percentage.to_f / 100)
  puts "Your tip ammount is $#{tip.round(2)}"
  total = bill.to_f + tip.to_f
  line

  puts "your bill is $#{total.round(2)}"
  line

  yourShare = total.to_f / party.to_f

  puts "Your share of the bill is $#{yourShare.round(2)}"
  line
  puts "Thank you for eating with us"
end

tipCalculator
