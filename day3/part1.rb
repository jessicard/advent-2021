gamma_rate = []
epsilon_rate = []

columns = []

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    for i in 0..line.strip.length - 1
      !columns[i] && columns << []

      columns[i] << line[i].to_i
    end
  end
end

columns.each do |column|
  on = column.sum > (column.length / 2)

  if on
    gamma_rate << "1"
    epsilon_rate << "0"
  else
    gamma_rate << "0"
    epsilon_rate << "1"
  end
end

puts gamma_rate.join.to_i(2) * epsilon_rate.join.to_i(2)
