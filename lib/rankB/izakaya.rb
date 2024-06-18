# https://paiza.jp/works/mondai/class_primer/class_primer__inheritance/edit?language_uid=ruby

# 初手お客さんの人数と注文回数が空白区切りで与えられる
# その次にお客さんの人数の数だけお客さんの年齢が与えられる
# その次に注文したお客さんのindex+1の値、注文の種類、値段が与えられる

# お客さんの数だけindexの順番で注文の合計金額を出力する
# （20歳未満はアルコールを頼めず注文取り消しになり、アルコールを頼めば以降の食事の注文が毎回２００円引きになる）

# 2次元配列を１次元配列にする方法・・？
# formatted_output = array.map(&:inspect).join(", ")
# FIXME:putsで理想通りだけどなんで・・？



class Food
  attr_reader :customer_id, :order_type, :price

  def initialize(*args)
    @customer_id, @order_type, @price = args
    @price = @price.to_i
  end

  def alcohol?
    order_type.eql?("alcohol")
  end

  def food?
    order_type.eql?("food")
  end

  def softdrink?
    order_type.eql?("softdrink")
  end
end


class Customer
  attr_reader :id, :age, :food

  def initialize(args)
    @id, @age, @food = args
    @age = @age.to_i
  end

  def adult?
    age >= 20
  end
end

# お客さん情報と注文情報 (Food) を管理する
class Izakaya
  DISCOUNT = 200
  attr_reader :customer, :foods

  def initialize(customer, foods)
    @customer = customer
    @foods = foods
  end

  def calc_order_price
    collect_customers_orders!

    is_alcohol_ordered = false
    sum_of_amount = 0

    # TODO: ここで会計処理をする
    foods.each do |food|
      # 一度 アルコールが注文されたら、移行の食べ物は値引きする
      if is_alcohol_ordered || food.alcohol? && customer.adult?
        is_alcohol_ordered = true
        # 値引きしつつ 会計
        sum_of_amount += food.price - DISCOUNT
      else
        sum_of_amount += food.price
      end
    end

    sum_of_amount
  end

  private

  # 注文とお客さん情報を結びつける
  def collect_customers_orders!
    result = []
    foods.each do |food|
      next unless customer.id.eql?(food.customer_id)

      result << food
    end

    @foods = result
  end
end

number_of_customer, number_of_orders = gets.chomp.split.map(&:to_i)
# customer_age = []
# order = []
# order_list = []

customers =
  number_of_customer.times.map do |i|
    # customer_age << gets.chomp.to_i
    Customer.new(["#{i + 1}", gets.chomp.to_i])
  end

foods =
  number_of_orders.times.map do
    Food.new(*gets.chomp.split)
  end

# formatted_order = order.map(&:inspect).join(", ")
# puts formatted_order

# pp foods
# pp customers



customers.each do |customer|
  izakaya = Izakaya.new(customer, foods)
  pp izakaya.calc_order_price
  # pp izakaya.foods
end

# class Taiyaki

#   def anko

#   end

#   def cream

#   end

# end

# class Customer

# end

# class TaiyakiStore
#   # ...
# end

# class Izakaya
#   attr_reader :number, :order_type, :price

#   def initialize(one_person_order) # FIXME:変数名バラバラよくない？
#     one_person_order.each do |content|
#       @number,@order_type,@price = content.split(",")
#     end
#   end

#   # classで第一引数と第3引数をint型にかえる
#   def change_int
#     @number = @number.to_i
#     @price = @price.to_i
#   end

#   # 第一引数を比較していき最大の数値の数の配列を作る
#   def create_numbox
#     @box = [0] #TODO:ここもおかしいしコンストラクタの受け取り方もおかしい？
#     @number.each do |num|
#       if num >= @box ? @box << num : nil
#     end
#   end

#   # １であれば１に追加、のような判定メソッドその後オーダーの種類判定するメソッド作る（最終的にnilを０にする）
#   def order_judgement
#     if @box.include?() ?  << : nil
#     @box.compact!
#   end

#   #上で出来た配列のそれぞれの金額を改行区切りで出力
#   def accounting
#     @box
#   end
# end


# today_order = Izakaya.new(formatted_order)
# puts today_order.change_int.create_numbox.order_judgement.accounting


# 途中でのデバッグの方法
# 連番で箱を作る、判定する、足すなり引くなりする
# 連番が同じものがあればそこに足すなり引くなりした結果を足す
