# frozen_string_literal: true

# Result
class Result
  attr_reader :dice, :values

  def initialize(dice, values)
    @dice = dice
    @values = values
  end

  def total
    @values.sum
  end

  def description
    "Rolled #{dice_description} for a total of #{total}"
  end

  private

  def dice_description
    @dice.each_with_index.map { |sides, index| "#{@values[index]} on a #{sides}-sided die" }.join(', ')
  end
end
