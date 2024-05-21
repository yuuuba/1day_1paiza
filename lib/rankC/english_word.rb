# https://paiza.jp/works/mondai/c_rank_skillcheck_archive/word-count/edit?language_uid=ruby
# スペースで区切られた英単語列が与えられます。
# 英単語列に含まれる英単語の出現回数を出現した順番に出力してください。

words = gets.chomp.split.map(&:to_s)

# 単語をカウントして、単語＋空白＋カウント数で出力する

words.tally.each do |k,v|
  puts "#{k} #{v}"
end
