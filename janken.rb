puts "じゃんけん..."
puts "0(グー)1(チョキ)2'(パー)3(戦わない)"

@janken_type = nil # @janken_type を初期化

hand_type = ["グー","チョキ","パー"] # hand_typeを外側のループの外で定義

loop do
  @janken_type = gets.to_i

  puts "ホイ!"
  puts "ーーーーーーーーーーーーーーーーーーー"

  while @janken_type > 3
    puts "入力が間違っています"
    puts "0(グー)1(チョキ)2'(パー)3(戦わない)"
    @janken_type = gets.chomp.to_i
    # 他の数字を選択した場合に再度質問する
  end

  if @janken_type == 3
    puts "じゃんけんを終了します"
    break
  end

  my_hand = @janken_type
  pc_hand = rand(0..2) # ランダムで出す

  puts "あなた：#{hand_type[my_hand]}を出しました。"
  puts "相手：#{hand_type[pc_hand]}を出しました。"

  puts "ーーーーーーーーーーーーーーーーーーー"

  if my_hand == pc_hand
    puts "あいこなので、もう一度手を選んでください"
    puts "0(グー)1(チョキ)2'(パー)3(戦わない)"
    next
  end

  puts "あっち向いて"
  puts "0(上)1(下)2(左)3(右)"

  point_type = gets.to_i

  puts "ショ！"
  puts "ーーーーーーーーーーーーーーーーーーー"

  while point_type > 3
    puts "入力が間違っています"
    puts "0(上)1(下)2(左)3(右)"
    point_type = gets.to_i
  end

  finger_type = ["上","下","左","右"]
  i_hand = point_type
  yo_hand = rand(0..3) # ランダムに出す

  puts "あなた：#{finger_type[i_hand]}"
  puts "相手：#{finger_type[yo_hand]}"

  puts "ーーーーーーーーーーーーーーーーーーー"

  if i_hand == yo_hand 
    if (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
      puts "あなたの勝ちです！"
    else
      puts "あなたの負けです！"
      
    end
    break
  end
  puts "じゃんけんに戻ります"
  puts "0(グー)1(チョキ)2'(パー)3(戦わない)"
end