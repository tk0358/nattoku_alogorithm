def longest_common_subsequence(word_a, word_b)
  a_size = word_a.size
  b_size = word_b.size

  cell = Array.new(a_size){Array.new(b_size, 0)}

  a_size.times do |i|
    b_size.times do |j|
      if word_a[i] == word_b[j]
        cell[i][j] = cell[i-1][j-1] + 1
      else
        cell[i][j] = (cell[i-1][j] > cell[i][j-1] ? cell[i-1][j] : cell[i][j-1] )
      end
    end
  end
  p cell[-1][-1]
end

longest_common_subsequence("fish", "fosh")
longest_common_subsequence("fosh", "fort")
