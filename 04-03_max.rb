def max(ary)
  if ary.size == 2
    ary[0] > ary[1] ? ary[0] : ary[1]
  else
    d_ary = ary.dup
    first = d_ary.shift
    submax = max(d_ary)
    first > submax ? first : submax
  end
end
ary = [2, 4, 12, 8, 6]
p max(ary)
p ary
