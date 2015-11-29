class Character
def initialize(name)
    @name = name

def choose_race
  races = ["Dwarf", "Elf", "Halfling", "Human", "Dragonborn", "Gnome", "Half-Elf", "Half-Orc", "Tiefling"]
  races.shuffle[0]
end
@race = choose_race

def choose_class
  classes = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard"]
  classes.shuffle[0]
end
@class = choose_class

def make_stats
  rand_rolls = Array.new(6)
  stats = rand_rolls.map!{ |e| e = rand(3..18)}
  rand_char = { "strength" => stats[0], "dexterity" => stats[1], "constitution" => stats[2], "intelligence" => stats[3], "wisdom" => stats[4], "charisma" => stats[5] }
end
@new_char = make_stats

def print_char
  puts "#{@name} is a #{@race} #{@class}."
 @new_char.each { |k, v|
    if v > 10
      puts "#{@name}'s #{k} is #{v}. Congrats!"
    else
      puts "#{@name}'s #{k} is #{v}. Sorry."
    end}
end
end
end

#To make a new character, call
#character = Character.new("name")
#character.print_char

# This was my character that I rolled that inspired the program.
# stat_rolls = [[6, 3, 4], [6, 6, 6], [3, 3, 4,], [5, 5, 6], [6, 6, 6], [1, 4, 2 ]]
# stat_rolls.map!{ |e| e.reduce(:+)}

# stats = { "strength" => stat_rolls[5],
#  "dexterity" => stat_rolls[0],
#  "constitution" => stat_rolls[3],
#  "intelligence" => stat_rolls[1],
#  "wisdom" => stat_rolls[4],
#  "charisma" => stat_rolls[2]
# }
# stats.each { |k, v| puts "Your #{k} is #{v}."}