# https://paiza.jp/works/mondai/c_rank_skillcheck_archive/umpire/edit?language_uid=ruby
# 野球の各打者はストライクが 3 つたまるとアウトとなり、ボールが 4 つたまるとフォアボールとなります。
# アウトあるいはフォアボールになると、この打者の番は終了します。

# あなたはストライクとボールを判定してコールする審判です。
# その場の状況に合わせて適切なコールを出しましょう。


# ballとストライクのカウンターを作る
# ボールだったらボールにカウント１プラス、ストライクだったらストライクにカウント１プラス
# 追加するときにストライクカウント２だった場合アウトと表示、ボールカウントが３だった場合フォアボールと表示

ball = 0
strike = 0
all_pitching = []

pitching_count = gets.chomp.to_i
pitching_count.times do
  all_pitching << gets.chomp.to_s
end

all_pitching.each do |pitching|
  if pitching == 'ball'
    ball += 1
    ball < 4 ? puts('ball!') : nil
    ball > 3 ? puts('fourball!') : nil
  elsif pitching == 'strike'
    strike += 1
    strike < 3 ? puts('strike!') : nil
    strike > 2 ? puts('out!') : nil
  end
end
