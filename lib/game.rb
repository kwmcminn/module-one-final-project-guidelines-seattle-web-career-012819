require 'pry'

class Game
  attr_reader :trainer

  def welcome
    puts "Welcome to the World of Pokemon!"
    # sleep(3)
    puts "Whoops, I apologize, but I can't recall your name"
    # sleep(4)
    puts "Can you jog my memory, please?"
    name = gets.chomp.downcase
    puts "AH! That's right. Welcome #{name.capitalize}."
    puts "And your age...?"
    age = gets.chomp.to_i
    @trainer = Trainer.create(name: name, age: age)
  end

  def choose_pokemon
    puts "Choose your starter Pokemon!"
    puts "1. Charmander"
    puts "2. Bulbasaur"
    puts "3. Squirtle"
    starter = gets.chomp.to_i
    if starter == 1
      @trainer.add_pokemon_to_roster(Pokemon.all[3])
      puts "Charmander! Great Choice!"
    elsif starter == 2
      @trainer.add_pokemon_to_roster(Pokemon.all[0])
      puts "Bulbasaur! Great Choice!"
    elsif starter == 3
      @trainer.add_pokemon_to_roster(Pokemon.all[6])
      puts "Squirtle! Great Choice!"
    else
      puts "That's not a valid response! Please type 1, 2, or 3 to choose your Pokemon"
      sleep(3)
      choose_pokemon
    end
  end
end
