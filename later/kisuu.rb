# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step1/edit?language_uid=ruby
# 整数 n と、数列 a_1, ... , a_n が与えられます。

# 数列を先頭から順に見たときに、最後に現れる奇数が何番目にあるかを求めてください。最初の要素 (a_1) を 1 番目とします。

# なお、与えられる数列には必ず奇数が含まれていることが保証されています。

_n = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
after_nums = []

# numsの一番最後にある奇数のindex+1を表示したい
nums.each do |num|
  if num.odd? == true
    after_nums << num
  end
end
# もし複数奇数があれば最後の奇数を.lastで表示する(またはindexが大きい方)
after_nums.last
