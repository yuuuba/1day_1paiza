# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step0/edit?language_uid=ruby

# 整数 n と、数列 a_1, ... , a_n が与えられます。

# 数列を先頭から順に見たときに、最初に現れる偶数が何番目にあるかを求めてください。最初の要素 (a_1) を 1 番目とします。

# なお、与えられる数列には必ず偶数が含まれていることが保証されています。

_num = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
answer_nums = []

# 最初の偶数が配列の何番目にあるか出力したい
# 一つずつ取り出し、偶数か確認する　偶数だったらindex＋１の情報を取りたい

nums.each_with_index do |num, idx|
  if num.modulo(2) == 0
    answer_nums << idx + 1
  end
end

puts answer_nums.first
