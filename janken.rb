puts "じゃんけん..."
puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

loop do
  janken_type = gets.to_i

  while janken_type > 3
    puts "入力が間違っています"
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    janken_type = gets.to_i
  end

  if janken_type == 3
    puts "じゃんけんを終了します"
    break
  end

  hand_type = ["グー", "チョキ", "パー"]
  my_hand = janken_type
  pc_hand = rand(0..2)

  puts "あなた：#{hand_type[my_hand]}を出しました。"
  puts "相手：#{hand_type[pc_hand]}を出しました。"

  puts "ーーーーーーーーーーーーーーーーーーー"

  if my_hand == pc_hand
    puts "あいこなので、もう一度じゃんけんしてください"
    puts "じゃんけん..."
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  else
    break
  end
end
