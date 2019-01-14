require 'set'

states_needed = Set["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]

stations = {}
stations["kone"] = Set["id", "nv", "ut"]
stations["ktwo"] = Set["wa", "id", "mt"]
stations["kthree"] = Set["or", "nv", "ca"]
stations["kfour"] = Set["nv", "ut"]
stations["kfive"] = Set["ca", "az"]

final_stations = Set[]

while states_needed.size > 0
  best_station = nil      #カバーされていない州を最も多くカバーする放送局を格納
  states_covered = Set[]  #best_stationが新たにカバーする州の集合
  stations.keys.each do |station|
    covered = states_needed & stations[station] # まだカバーされていない州のうちstationがカバーする州の集合（積集合）
    if covered.size > states_covered.size #このstationがこれまでのbest_stationより多くの州をカバーする場合
      best_station = station    # best_stationを更新
      states_covered = covered
    end
  end
  states_needed -= states_covered #best_stationによっていくつかの州が新たにカバーされるので、それらの州を除外
  final_stations << best_station #best_stationを最終的な放送局のリストに追加
end

print final_stations
