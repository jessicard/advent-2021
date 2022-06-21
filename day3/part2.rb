data = []
columns = []

File.open("test.txt", "r") do |f|
  f.each_line do |line|
    formatted_line = line.strip

    data << formatted_line

    for i in 0..formatted_line.length - 1
      !columns[i] && columns << []
      columns[i] << formatted_line[i].to_i
    end
  end
end

o2_options = data
co2_options = data

o2_columns = columns
co2_columns = columns

o2_columns.each_with_index do |column, i|
  on = column.sum >= (column.length / 2)

  if (o2_options.length > 1)
    o2_options = o2_options.select { |opt| opt[i] == (on ? "1" : "0") }
  end

  o2_columns = []

  puts o2_options.length

  for y in 0..o2_options.length - 1
    !o2_columns[y] && o2_columns << []
    o2_columns[y] << o2_options[y].to_i
  end

  puts o2_columns.inspect
end


# columns.each_with_index do |column, i|
#   on = column.sum >= (column.length / 2)
#
#   if (o2_options.length > 1)
#     o2_options = o2_options.select { |opt| opt[i] == (on ? "1" : "0") }
#   end
#
#   if (co2_options.length > 1)
#     co2_options = co2_options.select { |opt| opt[i] == (on ? "0" : "1") }
#   end
# end

# puts o2_options.inspect
# puts co2_options.inspect

# puts o2_options.first.to_i(2) * co2_options.first.to_i(2)
puts o2_options.first.to_i(2)
