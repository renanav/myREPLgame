puts "Welcome to the Matrix! My name is Morpheus and I'll be your instructure today"
game_on = true
while game_on
  puts "You have several choices my friend: take the red pill, take the blue pill, go coding"
  choice = gets.chomp
  if choice.include? "blue"
    choice = "take the blue pill"
  elsif choice.include? "red"
    choice = "take the red pill"
  elsif choice.include? "coding"
    choice = "go coding"
  end
  case choice
  when "take the blue pill"
    puts "are you sure?"
    answer1 = gets.chomp
    if answer1.include? "y"
      answer1 = "yes"
    elsif answer1.include? "n"
      answer1 = "no"
    else
      puts "Let's try that again..."
      game_on = true
    end
    if answer1 == "yes"
      puts "Godspeed \"Mr. Anderson\". "
      puts "You take the blue pill, the story ends. You wake up in your bed and believe whatever you want to believe"
      game_on = false
    elsif answer1 == "no"
      puts "Ok, so what will it be?"
      game_on = true
    else
      puts "Since you are not certain let me as you again"
      game_on = true
    end
  when "take the red pill"
    puts "Let's Start training!"
    puts "You take the red pill, you stay in wonderland, and I show you how deep the rabbit hole goes"
    puts "We need to start training. What would you like to start with?"
    puts  "Kung Fu", "Karate", "Krav Maga"
    program = gets.chomp
    case program
    when "#{program}"
      puts "Tank, load the #{program} training program"
      puts "Well done my friend, You have finished your first part of training. Let's have a short break. What will you have? tea? coffee? water?"
      drink = gets.chomp #the drink line should run only with kung fu
      if drink == "water"
        puts "Enjoy your water"
        game_on = false
      elsif drink == "coffee" || drink == "tea"
        puts "Sugar?"
        sugar = gets.chomp.to_s
        puts "Cream?"
        cream = gets.chomp.to_s
        puts "Youre drink is ready, #{drink} with #{sugar} sugar and #{cream} cream"
        puts "Is it good?"
        good = gets.chomp
        if good == "yes"
        puts "Enjoy, we have much more training to complete"
        game_on = false
        elsif good == "no"
            puts "I will have mouse make you a new one"
            game_on = false
        else
          puts "I'm sorry, I did not understand. yes or no?"
          game_on = false
        end
      end
    else
      puts "Please choose one program"
    end
  when "Karate"
    puts "Tank, load the #{program} training program"
  when "Krav Maga"
    puts "Tank, load the #{program} training program"
  when "go coding"
    puts "Good luck Mr. Anderson, agent Smith will show you the way out \nsee you tomorrow at FAT village..."
    game_on = false
  else
    puts "Halt and catch fire! try again"
  end
end
