# https://paiza.jp/works/mondai/class_primer/class_primer__inheritance/edit?language_uid=ruby

# 初手お客さんの人数と注文回数が空白区切りで与えられる
# その次の行にお客さんの人数の数だけお客さんの年齢が与えられる
# その次の行に注文したお客さんのindex+1の値、注文の種類、値段が与えられる

# お客さんの数だけindexの順番で注文の合計金額を出力する
# （20歳未満はアルコールを頼めず注文取り消しになり、アルコールを頼めば以降の食事の注文が毎回２００円引きになる）

# 2次元配列を１次元配列にする方法・・？
# formatted_output = array.map(&:inspect).join(", ")
# FIXME:putsで理想通りだけどなんで・・？

customer,number_of_orders = gets.chomp.split.map(&:to_i)
customer_age = []
order = []
after_order = nil

customer.times.map do
  customer_age << gets.chomp.to_i
end

number_of_orders.times do
  order << gets.chomp.split
end

formatted_output = order.map(&:inspect).join(", ")

# p customer
# p number_of_orders
# p customer_age
# p order
# puts formatted_output
