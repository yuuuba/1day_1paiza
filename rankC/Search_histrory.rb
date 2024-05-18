# あなたが利用しているブラウザでは検索ワードの履歴を見ることができません。あなたは検索ワードの履歴を見られないのは不便だと思ったので、検索ワードの履歴を見る機能を自分でつくることにしました。

# 検索ワードの履歴とは次のようにつくられます。

# 検索ワード W が以前に入力されたことがある場合：
# 履歴中の W を削除する。
# 履歴の先頭に W を追加する。
# 検索ワード W が以前に入力されたことがない場合：
# 履歴の先頭に W を追加する。

# 検索ワード W が N 個与えられるので、N 個の検索ワードが与えられた後の履歴を表示するプログラムを書いてください。

# https://paiza.jp/works/mondai/c_rank_skillcheck_archive/search_history/edit?language_uid=ruby

# 検索数、ワードが与えられる
# ひとつずつeachで比較し毎回先頭（unshift）に新しい箱に入れて、比較したときに過去に同じものがあれば箱から削除して先頭に格納
# 箱出力

history = []
words = []
number_of_searches = gets.chomp.to_i
number_of_searches.times do
  words  << gets.chomp.to_s
end

# wordsの要素ひとつずつwordsと比較する
# もし比較していく中で同じワードがあればwordsから同じ要素を削除して、比較した要素を配列の先頭にぶち込む
# 同じワードがなければ先頭にぶち込む

# eachで抜き出す、最初の同じ要素を消す、
# その後に改めて同じワードがあるか、あれば同じワード消して、unshiftで先頭に要素ぶち込む
# なければ先頭にぶち込む

words.each do |word|
  delete_index = words.index(word)
  words.delete_at(delete_index)
  if words.include?(word)
    words.delete_at(delete_index)
    history.unshift(word)
  else
    history.unshift(word)
  end
end

puts history
