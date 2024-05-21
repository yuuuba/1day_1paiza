# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step2/edit?language_uid=ruby

# 整数 n と、数列 a_1, ... , a_n と、整数 k が与えられます。

# 数列に含まれる値で、k 以上であるもののうち、値が最小のものを出力してください。

# なお、k 以上である値が必ず数列に含まれていることが保証されています。

_n = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i
after_nums = []

# k以上の数字をあぶり出す
nums.each do |num|
  if num >= k
    after_nums << num
  end
end
# 炙り出した数字の中で最小値を出す
puts after_nums.min
