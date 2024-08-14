# frozen_string_literal: true

require_relative '../lib/dice_roller'

RSpec.describe DiceRoller do
  it 'returns a Result object with correct total and description' do
    dice = [6, 8]
    roller = DiceRoller.new(dice)
    result = roller.roll

    expect(result).to be_a(Result)
    expect(result.dice).to eq(dice)
    expect(result.values.size).to eq(2)
    expect(result.total).to eq(result.values.sum)
  end

  it 'generates a random value within the correct range' do
    roller = DiceRoller.new([6])
    result = roller.roll

    expect(result.values.first).to be_between(1, 6).inclusive
  end
end
