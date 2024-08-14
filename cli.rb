# frozen_string_literal: true

require_relative 'lib/dice_roller'

def dice_input
  puts 'Enter the number of dice:'
  num_of_dice = gets.chomp.to_i

  dice = []
  num_of_dice.times do |i|
    puts "Enter the number of sides for die #{i + 1}:"
    sides = gets.chomp.to_i
    dice << sides
  end
  dice
end

def display_result(result)
  puts result.description
end

dice = dice_input
roller = DiceRoller.new(dice)
result = roller.roll
display_result(result)
