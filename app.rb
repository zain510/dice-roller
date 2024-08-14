# frozen_string_literal: true

# App
require 'sinatra'
require_relative 'lib/dice_roller'

get '/' do
  erb :index
end

post '/roll' do
  dice = params[:dice].map(&:to_i)
  roller = DiceRoller.new(dice)
  @result = roller.roll
  erb :result
end
