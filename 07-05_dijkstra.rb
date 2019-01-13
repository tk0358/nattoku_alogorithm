graph = {}
graph["start"] = {}
graph["start"]["a"] = 6
graph["start"]["b"] = 2
graph["a"] = {}
graph["a"]["fin"] = 1
graph["b"] = {}
graph["b"]["a"] = 3
graph["b"]["fin"] = 5
graph["fin"] = {}

infinity = Float::INFINITY
costs = {}
costs["a"] = 6
costs["b"] = 2
costs["fin"] = infinity

parents = {}
parents["a"] = "start"
parents["b"] = "start"
parents["fin"] = nil

processed = []

def find_lowest_cost_node(costs, processed)
  lowest_cost = Float::INFINITY
  lowest_cost_node = nil
  # 各ノードを処理
  costs.keys.each do |node|
    cost = costs[node]
    # これまでで最もコストが低く、まだ処理されていないノードの場合
    if cost < lowest_cost && !processed.include?(node)
      # 新しいlowest_nodeノードとして設定
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  lowest_cost_node
end

# まだ処理していないノードのうち、最もコストの低いノードを探す
node = find_lowest_cost_node(costs, processed)

# このwhileループが終了するのは、すべてのノードの処理が完了した場合
while node
  cost = costs[node] #このノードのコストを取得
  neighbors = graph[node] #隣接ノードのハッシュテーブルを取得、neighborsはハッシュテーブル
  neighbors.keys.each do |n| #このノードの隣接ノードをイテレータで処理
    new_cost = cost + neighbors[n] #このノード経由で隣接ノードnに
    if costs[n] > new_cost         #移動するほうがコストが低い場合には…
      costs[n] = new_cost          # 隣接ノードnのコストを更新
      parents[n] = node            # 隣接ノードnの親をnodeに更新
    end
  end
  processed << node  # このノードを処理済みとして指定
  node = find_lowest_cost_node(costs, processed) # 次に処理するノードを探し、ループで処理
end

print "Cost from the start to each node:"
puts costs
