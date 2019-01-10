def count(ary)
  if ary.size == 0
    return 0
  else
    ary.shift
    1 + count(ary)
  end
end

p count([2, 4, 6, 8, 10])
