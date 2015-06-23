#!/usr/bin/env ruby

require_relative '../lib/studio_game/player'
require_relative '../lib/studio_game/game'

player1 = StudioGame::Player.new("moe")
player2 = StudioGame::Player.new("larry", 60)
player3 = StudioGame::Player.new("curly", 125)

knuckleheads = StudioGame::Game.new("Knuckleheads")
default_player_file = 
  File.join(File.dirname(__FILE__), 'players.csv')
knuckleheads.load_players(ARGV.shift || default_player_file)

loop do

  puts "How many round ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit','exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end

end

knuckleheads.save_high_scores

