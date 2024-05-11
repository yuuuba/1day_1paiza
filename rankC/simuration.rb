# https://paiza.jp/works/mondai/c_rank_level_up_problems/c_rank_simulation_boss/edit?language_uid=ruby
# カウンター魔法を得意とするパイザ君は、同じくカウンター魔法を使うモンスターと戦っています。バトルはターン制で、パイザ君が先攻で、
# パイザ君とモンスターで交互に魔法を使い合います。パイザ君の魔法は 1 回目と 2 回目に使うときにはダメージ 1 ですが、
# 3 回目以降の n 回目には、(モンスターから受けた (n - 1) 回目の攻撃のダメージ) + (モンスターから受けた (n - 2) 回目の攻撃のダメージ)
# のダメージを与えます。モンスターの魔法はこれよりも強力で、 1 回目と 2 回目には同じくダメージ 1 ですが、
#   3 回目以降の n 回目には、 (パイザ君から受けた (n - 1) 回目の攻撃のダメージ) * 2 + (パイザ君から受けた (n - 2) 回目の攻撃のダメージ)
# のダメージを与えます。

# パイザ君は自分がどれくらいモンスターの攻撃を耐えられるか知りたいと思っています。パイザ君の体力を H として、
# 両者が同じ魔法を使い続けたとき、モンスターの何回目の攻撃でパイザ君の体力が 0 以下になるかを出力してください。

# 　　　　paiza モンスター
# １回目  1     1
# 2回目  1      1
# 3回目以降  前回受けたダメージ + 前々回から受けたダメージを与える　paizaから前回受けたダメージ* 2 + 前々回から受けたダメージ

HP = gets.chomp.to_i

# paizaクラスとモンスタークラスを作る
# それぞれアタックメソッドを作る（その中で攻撃回数のカウンターを作る）
# アタックメソッドの中でもし攻撃回数が3回目以降なら・・を作る
# paizaとモンスターのカウンターを比較して両者０もしくは同じならpaizaがアタックメソッド実行、モンスターのカウンターがpaizaカウンターより数字が小さければアタックメソッド実行
# HPが０、０未満の場合アタックメソッドを実行しない、０未満になるまで上記を繰り返す
class Character
end

class Hero << Character
  attr_reader :name, :hp

  def initialize(name,hp = HP)
    @name = name
    @hp = hp
    @counter = 0
    @damege_control = []
    @damege_control_max_size = 3
  end

  def damege_control_add(element)
    if @damege_control.length < @damege_control_max_size
      @damege_control << element
    else
      @damege_control.shift
      @damege_control << element
    end
  end

  def attack(target)
    if @counter < 3
      target.hp -= 1
      damege_control_add(1)
    elsif @counter >= 3
      damege_inflicted = target.@damege_control[0] + target.@damege_control[1]
      target.hp -= damege_inflicted
      damege_control_add(damege_inflicted)
    end
  end



end

class Monster << Character
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
    @counter = 0
    @damege_control = []
    @damege_control_max_size = 3
  end

  def attack(target)
    if @counter < 3
      target.hp -= 1
      damege_control_add(1)
    elsif @counter >= 3
      damege_inflicted = (target.@damege_control[0] * 2) + target.@damege_control[1]
      target.hp -= damege_inflicted
      damege_control_add(damege_inflicted)
    end
end

class Battale

end
