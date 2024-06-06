# https://paiza.jp/works/mondai/class_primer/class_primer__inheritance/edit?language_uid=ruby

# 初手お客さんの人数と注文回数が空白区切りで与えられる
# その次にお客さんの人数の数だけお客さんの年齢が与えられる
# その次に注文したお客さんのindex+1の値、注文の種類、値段が与えられる

# お客さんの数だけindexの順番で注文の合計金額を出力する
# （20歳未満はアルコールを頼めず注文取り消しになり、アルコールを頼めば以降の食事の注文が毎回２００円引きになる）

# 2次元配列を１次元配列にする方法・・？
# formatted_output = array.map(&:inspect).join(", ")
# FIXME:putsで理想通りだけどなんで・・？

customer,number_of_orders = gets.chomp.split.map(&:to_i)
customer_age = []
order = []
order_list = []


customer.times.map do
  customer_age << gets.chomp.to_i
end

number_of_orders.times do
  order << gets.chomp.split
end

formatted_order = order.map(&:inspect).join(", ")


class Izakaya
  attr_reader :number, :order_type, :price

  def initialize(one_person_order) # FIXME:変数名バラバラよくない？
    one_person_order.each do |content|
      @number,@order_type,@price = content.split(",")
    end
  end

  # classで第一引数と第3引数をint型にかえる
  def change_int
    @number = @number.to_i
    @price = @price.to_i
  end

  # 第一引数を比較していき最大の数値の数の配列を作る

  # １であれば１に追加、かつオーダーの種類判定するメソッド作る（最終的にnilを０にする）

  #上で出来た配列のそれぞれの金額を改行区切りで出力

end

puts formatted_order





# 連番で箱を作る、判定する、足すなり引くなりする
# 連番が同じものがあればそこに足すなり引くなりした結果を足す
