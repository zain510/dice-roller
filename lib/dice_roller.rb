# frozen_string_literal: true

require_relative '../lib/result'
# DiceRoller
class DiceRoller
  attr_reader :dice, :results

  def initialize(dice)
    @dice = dice
    @results = []
  end

  def roll
    @results = @dice.map { |sides| rand(1..sides) }
    Result.new(@dice, @results)
  end
end
