# https://paiza.jp/works/mondai/c_rank_level_up_problems/c_rank_sort_boss/edit?language_uid=ruby
# 人数を読み取る
people_count = gets.chomp.to_i

# 所有物を格納する配列
possession = []

# 各人の情報を読み取って格納する
people_count.times do
  gold, silver = gets.chomp.split.map(&:to_i)
  possession << { gold: gold, silver: silver }
end

# 銀を第一優先、金を第二優先で降順にソート
possession.sort_by! { |person| [-person[:silver], -person[:gold]] }

# 結果を出力
possession.each do |person|
  puts "#{person[:gold]} #{person[:silver]}"
end
