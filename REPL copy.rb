puts "Welcome to the year 2075.\n
You have entered amidst the war between Lycans and Vampires.\n"

game = true
while game

puts "What yould you like to play as?\n
Vampire\n
Werewolf\n"
userCharacter = gets.chomp.downcase

case userCharacter
when "vampire"
  puts "What would you like to name your Vamp?"
  vampName = gets.chomp
  puts "#{vampName}, You have infiltrated Lycan territory\n
  Your purpose is to extract the three components of the Lycan virus, so the Vampires can concoct an antivirus to destroy them.\n
  You must get past three Lycan Guardians guarding each component at the edge of the forest.\n
  You are encountering the first Lycan guardian. All of your weapons contain silver. Would you like to use your sword, gun, or bow and arrow?"
weapon = gets.chomp
    case weapon
    when "sword"
      puts "You cut the head right off the Lycan and obtained component 1 of the virus."
    when "gun"
      puts "The Lycan succumbed to the deadly silver of the bullet. You have obtained the first component of the virus."
    when "bow and arrow"
      puts "The Lycan has been hit unconcious and is slowly dying form the silver poisoning his system. You have obtained the first component of the virus."
    else
      puts "You have failed to pick a weapon, The Lycan Guardian has demolished you..."
      game = false
      break

    end

    puts "The first component of the virus is in your posession. The second Lycan Guardian has sensed you and is approaching...\n Would you like to: \n
    h: hide and surprise attack the Lycan with your sword\n
    c: climb a tree and shoot the lycan with your bow and arrow\n
    r: run towards the second component and steal it while the Guardian is away from his post?"
    second_decision = gets.chomp
    case second_decision
    when "h"
      puts "You have succeeded in your surprise attack, the second component is no longer guarded."
    when "c"
      puts "The guardian has been taken down. The second component is no longer guarded. "
    when "r"
      puts "You have successfully obtained the second component without a fight."
    else
      "You have failed to chose a correct action, the Guardian has found you and eaten you alive..."
      game = false
    end

    puts "2/3...\nThe next component will be the hardest to obtain. The most vicious Lycan guardian, Draco, will be waiting for you...\n
    You use your map and compass to find the entrance to the large cave where the third component is hidden. Draco is suddenly awoken by your presence...HE SPRINGS TOWARDS YOU\n
    Would you like to:\n
    r: run towards him with your sword\n
    b: fight him off and bite him with your deadly fangs\n
    g: use you gun filled with silver bullets?"
    third_decision = gets.chomp
    case third_decision
    when "r"
      puts "You decapitated Draco. He is drowning in a lake of of blood spouting from his neck."
    when "b"
      puts "The fight was epic and you were able to sink your fangs into him and expose him to your deadly venom."
    when "g"
      puts "One shot to the heart and Draco is on the floor."
    else
    puts "You have failed to chose a correct action, Draco has eaten you alive and retrieved the two components you stole."
    game = false
    break
    end
puts "You have succeeded in retrieving the three components of the virus, the Vampire Elders are busy concocting an antivirus to demolish the Lycans... Good Work #{vampName}."

game = false

#LYCAN
when "lycan"
  puts "What would you like to name your Lycan?"
  lycanName = gets.chomp
  puts "The Vampires has been trying to decimate the lycan population since the creation of the lycan virus.\n
  You have been sent in to find the spells to destroy the entire Vampire population.\n
  Do you accept this challenge? "
  lycan_acceptance =gets.chomp
  if "yes"
    puts "With the help of underground Lycans, you are now in the basement of the Vampire Elders' castle where the three vampire extinction spells are hidden."
else
  puts "GAME OVER"
  game =false
  break
end

puts "Intel says the last 3 spells are located in the rooms of the three Vampire Elders.\n
There are three floors to the castle other than the ground floor, each containing a room of an Elder\n
Elders are usually sleeping unless they sense danger.\n
You are approaching the room of the first Vampire Elder. \nWould you like to:\n
c: change at will and attack the Elder with your bare hands and teeth
h: use a knife dipped in holy water
r: stake the Elder"
first_fight = gets.chomp
case first_fight
when "c"
  puts "The first Elder has been subdued."
when "h"
  puts "The first Elder has been subdued."
when "r"
  puts "The first Elder has been subdued."
else
  puts "You have failed to subdue the first Vampire Elder. He bit you and you are slowly dying from his venomous fangs."
  game = false
  break
end

puts "By the fireplace is a spellbook turned to the first extinction spell. You rip it out and proceed to the next floor.\n
As you walk towards the next room you notice the Elder is awake. He will be much harder to fight off. \nWould you like to:\n
g: shoot the elder with bullets that were dipped in holy water\n
w: wait until he senses you and attacks you, only to spray him with holy water and stab him with your blade
d: transform and attack"
second_fight= gets.chomp
case second_fight
when "g"
  puts "The second elder has been subdued."
when "w"
  puts "The second elder has been subdued."
when "d"
  puts "The second elder has been subdued."
else
  puts "You have failed to enter a correct fight and as a result the second elder has killed you.\n
  GAME OVER"
  game =false
  break
end

puts "You have obtained the second extinction spell. The next elder is stupid im tired "
puts "Would you like to:\n
t: transform and fight
h: hide until he goes to the next floor and steal the third extinction spell.
p: surprise attack him with holy water and your blade"
third_fight =gets.chomp
case third_fight
when "t"
  puts "You transformed and violently killed the elder. He is torn to shreds."
when "h"
  puts "You were able to hide from the Elder and enter his room with enough time to steal the third extinction spell."
when "p"
  puts "The Elder was subdued by the holy water and killed by your blade."
else "You failed to get past the third elder... GAME OVER"
  game = false
  break
end
puts "Good Work #{lycanName}, You managed to extract all three extinction spells from the castle of the Vampire Elders.\n
The underground Lycans will now help you escape through the basement to avoid any more conflict in vampire territory."

else
  puts "Please try again"
  game = false
  break
end
end
