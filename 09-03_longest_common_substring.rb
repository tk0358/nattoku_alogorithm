def longest_common_substring(word_a, word_b)
  max = 0
  a_size = word_a.size
  b_size = word_b.size

  cell = Array.new(a_size){Array.new(b_size, 0)}

  a_size.times do |i|
    b_size.times do |j|
      if word_a[i] == word_b[j]
        cell[i][j] = cell[i-1][j-1] + 1
      else
        cell[i][j] = 0
      end
      max = cell[i][j] if cell[i][j] > max
    end
  end
  p max
end

longest_common_substring("hish", "vista")
longest_common_substring("hish", "fish")
