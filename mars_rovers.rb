require_relative 'plateau'
require_relative 'rover'

puts 'Mission to Mars'
puts 'define plateau to explore'
print '>'

plateau_params = gets.chomp.split
plateau = Plateau.new(plateau_params)

puts "Plateau of size #{plateau.size_x} by #{plateau.size_y} ready for exploration!"

puts 'deploy Rover 1'
print '>'

rover_params = gets.chomp.split

rover1 = Rover.new(rover_params)

puts 'deploy Rover 2'
print '>'

rover_params = gets.chomp.split

rover2 = Rover.new(rover_params)

puts "Rover 1 deployed at coordinates #{rover1.locate}"
puts "Rover 2 deployed at coordinates #{rover2.locate}"

puts 'Rover 1 awating exploration command string...'
print '>'

instructions = gets.chomp
rover1.operate(instructions)

puts 'Rover 2 awating exploration command string...'
print '>'

instructions = gets.chomp
rover2.operate(instructions)

rover1.locate
rover2.locate
