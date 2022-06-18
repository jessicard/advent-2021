window = 3
window_sums = []

last_sum = nil
increases = 0

File.open("input.txt", "r") do |f|
  f.each_line do |line|
    window_sums << line.to_i

    if window_sums.length == window
      new_sum = window_sums.sum

      if last_sum && last_sum < new_sum
        increases = increases + 1
      end

      window_sums.delete_at(0)
      last_sum = new_sum
    end
  end
end

puts increases
