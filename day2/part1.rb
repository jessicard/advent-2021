horizontal_position = 0
depth = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    args = line.split(" ")

    instruction = args[0]
    amt = args[1].to_i

    case instruction
    when "forward"
      horizontal_position = horizontal_position + amt
    when "down"
      depth = depth + amt
    when "up"
      depth = depth - amt
    end
  end
end

puts horizontal_position * depth
