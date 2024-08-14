# frozen_string_literal: true

require_relative '../lib/dice_roller'

RSpec.describe Result do
  it 'calculates the total correctly' do
    result = Result.new([6, 8], [3, 5])
    expect(result.total).to eq(8)
  end

  it 'provides a correct description' do
    result = Result.new([6, 8], [3, 5])
    expect(result.description).to eq('Rolled 3 on a 6-sided die, 5 on a 8-sided die for a total of 8')
  end
end
