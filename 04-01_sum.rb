def sum(ary)
  if ary.size == 0
    0
  else
    ary.shift + sum(ary)
  end
end

p sum([2, 4, 6])
