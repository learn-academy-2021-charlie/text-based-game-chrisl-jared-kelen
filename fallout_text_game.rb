def game_start
  delayed_print "You live in a Vault. You've lived here your whole life. The doors have just opened, however."
  puts
  puts 'What will you do?'
  puts '1: Stay in the vault, coward.'
  puts '2: Embrace your freedom! Leave the vault and chance the nuclear wasteland!'
  puts '3: Become psychotic and kill everyone.'
  player_move = gets.to_i
  player_move == 1 && stay_in_the_vault_coward
  player_move == 2 && exit_the_vault
  player_move == 3 && kill_everyone
end

def stay_in_the_vault_coward
  delayed_print "You live out your days in the vault and die of old age"
end

def exit_the_vault
  puts <<-'EOF'
                                                 *******
                                 ~             *---*******
                                ~             *-----*******
                         ~                   *-------*******
                        __      _   _!__     *-------*******
                   _   /  \_  _/ \  |::| ___ **-----********   ~
                 _/ \_/^    \/   ^\/|::|\|:|  **---*****/^\_
              /\/  ^ /  ^    / ^ ___|::|_|:|_/\_******/  ^  \
             /  \  _/ ^ ^   /    |::|--|:|---|  \__/  ^     ^\___
           _/_^  \/  ^    _/ ^   |::|::|:|-::| ^ /_  ^    ^  ^   \_
          /   \^ /    /\ /       |::|--|:|:--|  /  \        ^      \
         /     \/    /  /        |::|::|:|:-:| / ^  \  ^      ^     \
   _Q   / _Q  _Q_Q  / _Q    _Q   |::|::|:|:::|/    ^ \   _Q      ^
  /_\)   /_\)/_/\\)  /_\)  /_\)  |::|::|:|:::|          /_\)
_O|/O___O|/O_OO|/O__O|/O__O|/O__________________________O|/O__________
//////////////////////////////////////////////////////////////////////
  EOF
  delayed_print "You see a small town down the hill, a road leading as far as the eye can see, and a strange robot about 10 meters away. What will you do?"
  puts
  puts '1: Approach the automaton.'
  puts '2: Ignore the robot and explore the town.'
  puts '3: Walk the road until you find something more interesting.'
  puts '4: Lose your mind. Re-enter the vault and kill everyone.'
  player_move = gets.to_i
  player_move == 1 && approach_the_automaton
  player_move == 2 && explore_the_town
  player_move == 3 && walk_the_road
  player_move == 4 && kill_everyone
end

def kill_everyone
  delayed_print "You kind of suck at fighting so you are easily overpowered and killed"
end

def approach_the_automaton
  delayed_print "The robot greets you with a jovial 'Hello!' It resembles the old house-keeping robots you've seen in history books in the vault. What will you do?"
  puts
  puts '1: Ask the robot to aid you on your journey.'
  puts '2: Ignore the robot and continue on.'
  puts '3: Attack the robot.'
  player_move = gets.to_i
  player_move == 1 && befriend_the_robot
  player_move == 2 && ignore_the_robot
  player_move == 3 && kill_everyone
end

def ignore_the_robot 
  delayed_print 'You ignore the robot and head into the city alone'
  enter_city_with_robot
end

def befriend_the_robot
  delayed_print 'You befriend the robot and enter the city'
  enter_city_with_robot
end

def enter_city_with_robot
  delayed_print 'You encounter a ranger named Austin Walker Texas Ranger'
  puts
  puts '1: Ignore the ranger' 
  puts '2: Try to befriend him'
  puts '3: Attack him'
  player_move = gets.to_i 
  player_move == 1 && continue_exploring
  player_move == 2 && fight_ranger_w_robot
  player_move == 3 && fight_ranger_w_robot
end

def fight_ranger_w_robot
  delayed_print 'The ranger knocks you to the ground, but the robot defeats him'
  puts
  delayed_print 'You continue exploring the city with the robot'
  continue_exploring
end

def continue_exploring 
  puts
  delayed_print 'You find a ghoul that waves you over'
  puts
  puts '1: Ignore the ghoul'
  puts '2: Walk over to the ghoul'
  puts '3: Attack the ghoul.'
  player_move = gets.to_i 
  player_move == 1 && continue_into_city
  player_move == 2 && ghoul_riddle
  player_move == 3 && kill_everyone
end

def ghoul_riddle
  delayed_print 'The ghoul tells you that you will recieve a prize if you solve this riddle:'
  puts
  delayed_print "Double my number, I'm less than a score, Half of my number is less than four. 
  Add one to my double when bakers are near, Days of the week are still greater, I fear."
  puts
  puts '1: Twelve'
  puts '2: Six'
  puts '3: Attack the ghoul.'
  player_move = gets.to_i 
  player_move == 1 && ghoul_attacks
  player_move == 2 && ghoul_prize
  player_move == 3 && kill_everyone
end

def ghoul_attacks
  delayed_print 'Wrong answer. Now die.'
  kill_everyone
end

def ghoul_prize
puts <<-'EOF' 
,________________________________       
|__________,----------._ [____]  ""-,__  __...-----==="
        (_(||||||||||||)___________/   ""             |
           `----------'        [ ))"-,                |
                                ""    `,  _,--...___  |
                                        `/          """" EOF
  delayed_print 'Here is your prize'
  continue_into_city_gun
end

def continue_into_city_gun
  delayed_print 'There is a scavenger in the distance. What do you do?'
    puts
  puts '1: Attack the scavenger and take their belongings.'
  puts '2: Befriend the scavenger.'
  player_move = gets.to_i 
  player_move == 1 && attack_scavenger
  player_move == 2 && befriend_scavenger
end

def attack_scavenger
  delayed_print 'You shoot the scavenger who dies immediately.'
  delayed_print 'You take food and ammo off the scavenger and continue on your journey.'
  see_building
end

def see_building
  delayed_print 'There is a building in front of you, you see an open door ...'
    puts
  delayed_print 'What do you do?'
  puts '1: Enter the building'
  puts '2: Walk away'
  player_move = gets.to_i 
  player_move == 1 && inside_building
  player_move == 2 && piano_death
end

def inside_building
  delayed_print 'You see a closed hermetic door and a hallway that leads to the left to bypass the door'
  delayed_print 'You notice a terminal on the wall with a cable that leads to the door'
  delayed_print 'Which direction do you choose?'
  puts '1: Ask the robot to open the terminal'
  puts '2: Go through the hallway'
  player_move = gets.to_i 
  player_move == 1 && terminal_config
  player_move == 2 && hallway_death
end

def terminal_config
  delayed_print ''
end

def hallway_death
  delayed_print 'You run into a group of scavengers that shoot you down.'
end

def piano_death
  delayed_print 'A random piano falls from the top of the building and lands on you.'
end

def befriend_scavenger
  delayed_print "The scavenger says, 'Sorry I need your stuff' and shoots you."
end

def continue_into_city
  puts <<-'EOF'
  /////////////\\\\
(((((((((((((( \\\\
))) ~~      ~~  (((
((( (*)     (*) )))
)))     <       (((
((( '\______/`  )))
)))\___________/(((
       _) (_
      / \_/ \
     /(     )\
    // )___( \\
    \\(     )//
     (       )
      |  |  |
       | | |
       | | |
      _|_|_|_' EOF
  delayed_print 'You run into a hostile scavenger and he shoots you down.'
end

def 

def ignore_the_robot
  delayed_print 'You ignore the robot and enter the city'
  ghoul_riddle
end

def walk_the_road
  puts <<-'EOF'
                                                 _
                 ___                          (_)
               _/XXX\
_             /XXXXXX\_                                    __
X\__    __   /X XXXX XX\                          _       /XX\__      ___
    \__/  \_/__       \ \                       _/X\__   /XX XXX\____/XXX\
  \  ___   \/  \_      \ \               __   _/      \_/  _/  -   __  -  \__/
 ___/   \__/   \ \__     \\__           /  \_//  _ _ \  \     __  /  \____//
/  __    \  /     \ \_   _//_\___     _/    //           \___/  \/     __/
__/_______\________\__\_/________\_ _/_____/_____________/_______\____/_______
                                  /|\
                                 / | \
                                /  |  \
                               /   |   \
                              /    |    \
                             /     |     \
                            /      |      \
                           /       |       \
                          /        |        \
                         /         |         \
                         EOF
  delayed_print "You travel down the road and see a mountain range ahead. To your right and left are desert plains. Where do you go?"
  puts '1: Continue to the mountains'
  puts '2: Enter the flatlands'
  player_move = gets.to_i
  player_move == 1 && puts('You find a cabin and live out your days happily')
  player_move == 2 && puts('You have ran out of water and you died of dehydration')
end

def ignore_the_robot
  delayed_print 'You ignore the robot and head into the city alone'
  enter_city_wo_robot
end
def enter_city_wo_robot
  delayed_print 'You encounter a ranger named Austin Walker Texas Ranger'
  puts
  puts '1: Ignore the ranger'
  puts '2: Try to befriend him'
  puts '3: Attack him'
  player_move = gets.to_i
  player_move == 1 && continue_exploring
  player_move == 2 && fight_ranger_wo_robot
  player_move == 3 && fight_ranger_wo_robot
end
def fight_ranger_wo_robot
  delayed_print 'Austin Walker Texas Ranger knocks you down and towers over your dead body'
end
def befriend_the_robot
  delayed_print 'You befriend the robot and enter the city'
  puts
  enter_city_with_robot
end
def enter_city_with_robot
  delayed_print 'You encounter a ranger named Austin Walker Texas Ranger'
  puts
  puts '1: Ignore the ranger'
  puts '2: Try to befriend him'
  puts '3: Attack him'
  player_move = gets.to_i
  player_move == 1 && continue_exploring
  player_move == 2 && fight_ranger_w_robot
  player_move == 3 && fight_ranger_w_robot
end

def delayed_print string
  string.each_char do |char|
    putc char
    sleep 0.03
  end
end

def render_ascii_art filename
  File.readlines(filename) do |line|
    puts line
  end
end

game_start
