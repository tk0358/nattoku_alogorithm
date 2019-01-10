def binary_search(list, item)
  # lowとhighを使ってリストの検索部分を追跡
  low = 0
  high = list.size - 1

  while low <= high  #１つの要素に絞り込まれるまでの間は・・・
    mid = (low + high) / 2
    guess = list[mid] #真ん中の要素を調べる
    if guess == item
      return mid
    elsif guess > item # 推測した数字が大きすぎた
      high = mid - 1
    else #推測した数字が小さすぎた
      low = mid + 1
    end
  end
  puts "#{item}は存在しません"
  nil
end

my_list = [1, 3, 5, 7, 9]
puts binary_search(my_list, 3)
puts binary_search(my_list, -1)
