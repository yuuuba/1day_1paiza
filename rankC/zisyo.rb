# https://paiza.jp/works/mondai/c_rank_level_up_problems/c_rank_dictionary_boss
# p 人のグループ A , q 人のグループ B , r 人のグループ C があります。各グループのメンバーにはそれぞれ番号がつけられており、
# A グループの i 番目の人は B グループの j 番目の人に仕事を任せ、 B グループの j 番目の人は与えられた仕事を C グループの k 番目の人に任せます。
# すると結局、 A グループの i 番目の人の仕事をするのは C グループの k 番目の人だということになります。

# パイザ君は A グループの各人の仕事を結局 C グループの誰が行うことになるのか知りたがっています。
# A グループの人のそれぞれが最終的に C グループの誰に仕事を頼むことになるのかを、 A グループの人の番号が小さい順に p 行出力してください。


# ABCの人数が与えられる
a,b,c = gets.chomp.split.map(&:to_i)
a_to_b = []
b_to_c = []
a_to_c = []
# Aグループの人数の数だけ繰り返されて、そのindex0(A)がindex1(B)に仕事を渡す、それを各グループの人数の数だけ繰り返すor Aの人数＋１の数まで繰り返す
a.times do
  a_to_b << gets.chomp.split.map(&:to_i)
end
# bの数だけ入力を受け付け、そのindex0(B)がindex1(C)に仕事を渡す
b.times do
  b_to_c << gets.chomp.split.map(&:to_i)
end

# 入力１グループのindex0が入力グループ２のindex1と数値が同じか比較し、新しい配列に格納する
a_to_b.each do |a,b|
  b_to_c.index(1) == a ? a_to_c << a,b : nil
end
# 格納した配列のindex0(A)の数値が小さい順に並び替え、そのまま全て出力する
a_to_c.each do |k|
  puts k.index(0).sort
end
