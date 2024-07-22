# https://paiza.jp/challenges/721/show

# 1行めは縦かけ横のマス目の数字、抽選回数が与えられる
# その次の行でn+1行目までビンゴで書かれた数字が半角スペースで与えられる
# n+2行目で抽選された数字が半角文字で与えられる
# 縦横斜めのn個のマスが開けられたらビンゴとし、その数を出力したい
area, number_of_lottery = gets.chomp.split.map(&:to_i)
bingo_card = []
area.times do
  bingo_card << gets.chomp.split.map(&:to_i)
end
lottery_number = gets.chomp.split.map(&:to_i)

p bingo_card

# 斜めN個を求める時・・
