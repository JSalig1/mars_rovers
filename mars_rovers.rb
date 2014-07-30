
puts 'Mission to Mars'
puts 'define plateau to explore'
print '>'

size = gets.chomp.split

plateau_size_x = size[0].to_i
plateau_size_y = size[1].to_i

puts "Plateau of size #{plateau_size_x} by #{plateau_size_y} ready for exploration!"

puts 'deploy Rover 1'
print '>'

position = gets.chomp.split

navigation = ["N", "E", "S", "W"]
pos_x = position[0].to_i
pos_y = position[1].to_i
heading = navigation.index("#{position[2]}")

puts heading.inspect

puts "Rover 1 deployed at coordinates #{pos_x}, #{pos_y} facing #{navigation.at(heading)}"

puts 'awating exploration command string...'
print '>'

instruct = gets.chomp

instruct.each_char do |instruction|
  if instruction == "M"
    if heading == 0
      pos_y = pos_y + 1
    elsif heading == 1
      pos_x = pos_x + 1
    elsif heading == 2
      pos_y = pos_y - 1
    elsif heading == 3
      pos_x = pos_x - 1
    end
  elsif instruction == "R"
    heading = navigation.index(navigation.at(heading + 1))
  elsif instruction == "L"
    heading = navigation.index(navigation.at(heading - 1))
  end
end
 
puts pos_x
puts pos_y
puts navigation[heading]
