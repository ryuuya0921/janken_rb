

  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2'(パー)3(戦わない)"

loop do

  janken_type = gets.to_i

  puts "ホイ!"
  puts "ーーーーーーーーーーーーーーーーーーー"

  while janken_type > 3
    puts "入力が間違っています"
    puts "0(グー)1(チョキ)2'(パー)3(戦わない)"
    janken_type = gets.chomp.to_i
    #他の数字を選択した場合に再度質問する
  end

  if janken_type == 3
    puts "じゃんけんを終了します"
    break
  end

  hand_type = ["グー","チョキ","パー"]
  my_hand = janken_type
  pc_hand = rand(0..2)
  # 上記はじゃんけんの処理

  finger_type = ["上","下","左","右"]

  puts "あなた：#{hand_type[my_hand]}を出しました。"
  puts "相手：#{hand_type[pc_hand]}を出しました。"

  puts "ーーーーーーーーーーーーーーーーーーー"

  if my_hand == pc_hand
    puts "あいこなので、もう一度手を選んでください"
    puts "0(グー)1(チョキ)2'(パー)3(戦わない)"
  else
    break
  end
end
