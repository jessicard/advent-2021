horizontal_position = 0
depth = 0
aim = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    args = line.split(" ")

    instruction = args[0]
    amt = args[1].to_i

    case instruction
    when "forward"
      horizontal_position = horizontal_position + amt
      depth = depth + (aim * amt)
    when "down"
      # depth = depth + amt
      aim += amt
    when "up"
      # depth = depth - amt
      aim -= amt
    end
  end
end

puts horizontal_position * depth
