#tip calculator from hackathon
puts "How much is the total bill?"
  input = gets.chomp.to_f

puts "Would you like to tip: 10%, 15%, 20%?"
user_tip=gets.chomp
case user_tip
when "10%"
  tip_perc =  0.10
when "15%"
  tip_perc = 0.15
when "20%"
  tip_perc =  0.20
else
  puts "How much would you like to tip? (Do not include percent sign)"
  tip_perc=gets.chomp.to_f * 0.01
end

puts "How many people are you splitting the bill with?"
  amount_people = gets.chomp.to_i

def tip_calc(input, tip_perc)
  input * tip_perc
end

def split_bill(bill_w_tip, amount_people)
  (bill_w_tip/amount_people).round(2)
end

bill_w_tip = tip_calc(input,tip_perc) + input
amount_pp = split_bill(bill_w_tip, amount_people)

puts "Your bill is $#{input}."
puts "Your bill after tip is $#{bill_w_tip}."
puts "The amount each person pays is $#{amount_pp}."
