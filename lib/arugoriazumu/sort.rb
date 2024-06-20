# https://paiza.jp/works/mondai/sort_naive/sort_naive__insertion/edit?language_uid=ruby

element = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

class SortNum
  attr_reader :nums

  def initialize(nums)
    @nums = nums
  end

  # まず配列の1個目(n)と２つ目(n+1)を比較する、並び替える、並び替えた後の配列を取得する
  def first_sort
    first_num = @nums[0]
    second_num = @nums[1]
    first_num < second_num ? @nums.unshift(first_num).uniq! : @nums.insert(1, first_num).uniq!
  end

  # ループ処理
  # nとn+1の要素を比較、比較して小さければｎの位置に、大きければｎ＋１の箇所に挿入
  # 以降n＋２。。とループ処理をし、ｎと比較して小さければｎの前に挿入、大きければｎ＋１に挿入かつｎ＋２（挿入前のn+1）と比較し小さければn+1の位置に大きければかn+2の位置に挿入
  # n+3をｎと比較して小さければｎの前に挿入、大きければｎ＋１に挿入かつｎ＋２（挿入前のn+1）と比較し小さければn+1の位置に大きければかn+2の位置に挿入、n+3と比較し小さければn+２、大きければn+3の位置に挿入する、この流れの処理を受け取った要素の数だけ繰り返す、全部一つの処理でできるか考える、無理なら前半と後半で分ける多分分ける

end
