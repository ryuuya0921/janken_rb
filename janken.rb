

  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2'(パー)3(戦わない)"

  janken_type = gets.to_i

  while janken_type > 3
    puts "入力が間違っています"
    puts "0(グー)1(チョキ)2'(パー)3(戦わない)"
    janken_type = gets.chomp.to_i
    #他の数字を選択した場合に再度質問する
  end

  hand_type = ["グー","チョキ","パー"]
  my_hand = janken_type
  pc_hand = rand(0..2)
  # 上記はじゃんけんの処理

  

if janken_type < 3

  hand_type = ["グー", "チョキ", "パー"]
  my_hand = janken_type
  pc_hand = rand(0..2)

  puts "あなたは#{hand_type[my_hand]}です。"
  puts "コンピュータは#{hand_type[pc_hand]}です。"

  puts "ーーーーーーーーーーーーーーーーーーー"

else
  puts "わかりました。Ctrl + D で終了してください"
end