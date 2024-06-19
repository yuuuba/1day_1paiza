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

  # ｎ＋２の要素を要素1個目(n)と比較して小さければｎの位置に、大きければｎ＋１の箇所に挿入、その後ｎ＋２の要素を比較し自分が小さければｎ＋１、大きければｎ＋２の位置に挿入する

  # 上記を要素の数だけ＋１した数字で繰り返す

end
