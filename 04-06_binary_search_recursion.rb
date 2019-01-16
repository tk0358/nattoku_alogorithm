def binary_search_rec(list, item, l, r)
  mid = (l + r) / 2
  guess = list[mid]
  if guess == item
    return mid
  elsif r - l <= 0
    puts "#{item}は存在しません"
  elsif guess > item
    binary_search_rec(list, item, l, mid-1)
  else
    binary_search_rec(list, item, mid+1, r)
  end
end

def binary_search_rec_interace(list, item)
  binary_search_rec(list, item, 0, list.size-1)
end

my_list = [1, 3, 5, 7, 9]
puts binary_search_rec_interace(my_list, 3)
puts binary_search_rec_interace(my_list, -1)
