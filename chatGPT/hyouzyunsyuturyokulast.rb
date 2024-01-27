n = gets.chomp.to_i
result = []

# n　×　１、n × ２、n　× ３...
# leftが１、rightが１、２、３と足されていく、rightがnの数字と同じになったらif文抜ける


#見た目上は合ってるけどテスト通らない
(1..n).each do |left|
  (1..n).each do |right|
    # もしrightの数字がnと同じになったら抜ける
    if right != n
      result << left * right
      result.join(' ')
    elsif right == n
      result << left * right
      break
    end
  end
end

result.each_slice(n) do |num|
  puts num
end


# chatGPT
n = gets.chomp.to_i
result = []

(1..n).each do |i|
  row = (1..n).map { |j| i * j }
  result << row.join(' ')
end

puts result

# 一つずつ処理を考えれてなかった、分解できてなかった
# 目の前のことしか考えてなかった感じがした
