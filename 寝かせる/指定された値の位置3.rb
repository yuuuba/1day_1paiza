n = gets.chomp.to_s
number_sequence = gets.chomp.split(" ").map(&:to_s)
k = gets.chomp.to_s

# 数列にｋが含まれていない場合、何も出力しない
if !number_sequence.include?(k)

# 数列にｋが複数含まれている場合、ｋのindex+1を全て出力する
elsif number_sequence.include?(k)
  number_sequence.
    p [idx + 1]
  end
end

#　条件に合致した要素全てのインデックスを出力するメソッドは調べた感じなさそう
#　自作メソッド作って読み込む？
# https://qiita.com/pocari/items/0b4e632ef2a2b6a97ba9
# https://qiita.com/hirokishirai/items/6adbb2eb09e6f2c92668
