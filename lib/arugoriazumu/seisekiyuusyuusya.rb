# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_search_condition_step6

# n 人の生徒がテストを受けました。このテストで k 点以上の点数を取った人が合格です。

# n 人の各生徒について、その人の名前とその人が取った点数が入力として与えられるので、このテストに合格した人の名前をすべて、入力された順に改行区切りで出力してください。

# なお、合格者が一人もいない場合は、何も出力しないでください。
students = gets.chomp.to_i
students_list = {}

students.times do
  name, score = gets.split
  students_list[name] = score.to_i
end

passing_score = gets.chomp.to_i

# scoreがpassing_score以上であれば出力、以上の数字でなければ何も出力しない
students_list.each do |name, score|
  score >= passing_score ? puts(name) : nil
end
