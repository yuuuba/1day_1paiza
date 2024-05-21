# https://paiza.jp/works/mondai/c_rank_skillcheck_archive/mikan
# なたはみかん農園を営んでいます。

# 収穫の季節になると、あなたはみかんを収穫し、重さごとに仕分けなければいけません。

# 仕分け作業は非常に時間がかかる作業なので、あなたはみかんを重さごとに仕分けてくれるプログラムを書くことにしました。

# みかんはある定数 N の倍数のうち、正の整数の重さが書かれた箱に仕分けられます。

# 例えば N = 10 の時、10 g, 20 g, 30 g ... のように仕分けられます。

# そして、そのみかんの重さが一番近い数の重さに仕分けられます。
# 重さが一番近い箱が複数ある場合、数が大きい方の箱に仕分けられます。

box, quantity = gets.chomp.split.map(&:to_i)
orange = []
quantity.times do
  orange << gets.chomp.to_i
end

# 箱の数は10個用意する、boxの倍数かける10個
# みかんの重さに一番近い箱に格納され、格納した箱に記載された箱をそれぞれ出力する
# みかんを格納する重さの基準はみかんの重さに近い上と下の箱を全ての箱から炙り出し、みかんの数値２つの箱の半分の数値未満は切り捨て、半分以上は切り上げ
