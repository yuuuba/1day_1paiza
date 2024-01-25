# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_value_step2/edit?language_uid=ruby

n = gets.chomp.to_s
number_sequence = gets.chomp.split(" ").map(&:to_s)
k = gets.chomp.to_s

# 数列にｋが含まれていない場合、０と出力
if !number_sequence.include?(k)
  puts 0
# 数列にｋが複数含まれている場合最初にヒットしたindex+1を出力
elsif number_sequence.include?(k)
  puts number_sequence.rindex(k) + 1
end

## 直近でやった問題の.indexを.rindexに変えたら解けた
