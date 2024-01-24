# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_value_step1/edit?language_uid=ruby&t=f7bb83e8734d449efebd0a57c4da686b

# 整数n、次の行で数列、次の行で整数ｋ
# 整数ｋが数列の何番目にあるか求める = .index
# 条件は数列にｋが含まれない場合、０を出力 = if文
# さらに数列にｋが複数含まれる場合は数列を先頭から探して最初のｋが何番目にあるか出力= .index

n = gets.chomp.to_s
number_sequence = gets.chomp.split(" ").map(&:to_s)
k = gets.chomp.to_s

# 数列にｋが含まれていない場合、０と出力
if !number_sequence.include?(k)
  puts 0
# 数列にｋが複数含まれている場合最初にヒットしたindex+1を出力
elsif number_sequence.include?(k)
  puts number_sequence.index(k).to_i + 1
end

#7行目.splitでStringから配列に変更
#11行目はchatGPTでヒントを得た（調べ方を知りたい、けど気にしすぎ・・？）
