def find_smallest(ary)
  smallest = ary[0]
  smallest_index = 0
  1.upto(ary.size-1) do |i|
    if ary[i] < smallest
      smallest = ary[i]
      smallest_index = i
    end
  end
  smallest_index
end

def selection_sort(ary)
  new_ary = []
  ary.size.times do |i|
    smallest_index = find_smallest(ary)
    new_ary << ary.delete_at(smallest_index)
  end
  new_ary
end

p selection_sort([5, 3, 6, 2, 10])
