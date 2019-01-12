
graph = {}
graph["you"] = %w(alice bob claire)
graph["bob"] = %w(anuj peggy)
graph["alice"] = %w(peggy)
graph["claire"] = %w(thom jonny)
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

search_queue = []
search_queue += graph["you"]

def search(name, graph)
  search_queue = []
  search_queue += graph[name]
  searched = []
  while search_queue.size > 0
    person = search_queue.shift
    unless searched.include?(person)
      if person_is_seller?(person) #マンゴー販売者かどうかをチェック
        print person + " is a mango seller!"
        return true
      else
        search_queue += graph[person]
        searched << person
      end
    end
  end
  false
end


def person_is_seller?(name)
  return name[-1] == 'm'
end

p search("you", graph)
