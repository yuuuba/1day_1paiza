# HINT: watch コマンド使ってみよう!
# watch -c -n 2 "ruby structure.rb < structure_input.txt"
# puts gets.chomp

lines_of_data = gets.chomp.to_i

input_data =
  lines_of_data.times.map do
    name, age, birthday, states = gets.chomp.split
    # [name, age, birthday, states]
    ret =
      <<~USER.lines.map(&:strip).join("\n")
        User{
          nickname : #{name}
          old : #{age}
          birth : #{birthday}
          state : #{states}
        }
      USER
    ret
  end

# pp input_data
puts input_data

# name, age, birthday, states = "名前 年齢 誕生日 出身地".split
# userの数だけテンプレを繰り返す、テンプレの形で出力、nicknameをname、oldをage..のように当てはめていく
# lines_of_data.times do
  # ret = ""
  # ret << "User{\n"
  # ret << "nickname : #{name}\n"
  # ret << "old : #{age}\n"
  # ret << "birth: #{birthday}"
  # ret << "state : #{states}\n"
  # ret << "}\n"
# end
# pp ret
# puts ret
