## ルール  
・クラスを使う問題　2時間
・クラスを使わない問題　1時間

### URL
https://paiza.jp/works/mondai  
https://paiza.jp/works/mondai/sequence_search_problems/problem_index?language_uid=ruby  

let (:input) do
  <~INPUT.lines.map(&:strip).join("\n")
    2 5
    59
    5
    2 food 1223
    1 alcohol 4461
    1 alcohol 4573
    1 alcohol 1438
    2 softdrink 1581
  INPUT
end

solver = Solver.new
    allow(solver).to receive(:gets).and_return(*input.lines)
    <!-- allow(solver).to receive(:gets).and_return(input.lines[0], input.lines[1], input.lines[2], input.lines[3], input.lines[4]...) -->
