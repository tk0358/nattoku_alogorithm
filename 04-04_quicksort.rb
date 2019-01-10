def quicksort(ary)
  if ary.size < 2
    ary
  else
    pivot = ary[0]
    less,greater = [],[]
    1.upto(ary.size-1) do |i|
      if ary[i] < pivot
        less << ary[i]
      else
        greater << ary[i]
      end
    end
    quicksort(less) + [pivot] + quicksort(greater)
  end
end

p quicksort([10, 51, 2, 3, 23, 12])
