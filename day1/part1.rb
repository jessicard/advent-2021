previous_line = nil
increases = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    if previous_line && previous_line.to_i < line.to_i
      increases = increases + 1
    end

    previous_line = line
  end
end

puts increases
