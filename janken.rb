require "csv"

def janken
    puts "じゃんけん！"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    your_hand = gets.to_i
    computer_hand = rand(3)
    
    if your_hand > 3 #４以上は何も起きない
        puts "入力した値は無効"
        return true
        
    elsif your_hand == 3
        puts "--------------------"
        puts "ゲーム終了"
        exit
    end
    
    jankens = ["グー","チョキ","パー"]
    puts "ホイ！"
    puts "--------------------"
    puts "あなた:#{jankens[your_hand]}を出しました\n相手:#{jankens[computer_hand]}を出しました"
    
     if (your_hand == computer_hand)
         puts "あいこです"
         puts "--------------------"
        return true
        
     elsif (your_hand == 0 && computer_hand == 1)||(your_hand == 1 && computer_hand == 2)||(your_hand == 2 && computer_hand == 0)
         $janken_result = "win"
         return acchimuite_hoi
         
     else
         $janken_result = "lose"
         return acchimuite_hoi
     end

end #jankenのend

def acchimuite_hoi
    puts "--------------------"
    puts "あっち向いてー"
    puts "0(上)1(下)2(右)3(左)"
    
    your_choice = gets.to_i
    computer_choice = rand(4)
    
    acchimuitehois = ["上","下","右","左"]
    puts "ホイ！"
    puts "--------------------"
    
    if your_choice > 3 #4以上は無効
     puts "入力した値は無効、じゃんけんからやり直し"
     return true
    end
    
     puts "あなた:#{acchimuitehois[your_choice]}\n相手:#{acchimuitehois[computer_choice]}"
     
    if (your_choice == computer_choice && $janken_result == "win")
        puts "あなたの勝ちです"
        return false
    
    elsif (your_choice == computer_choice && $janken_result == "lose") 
        puts "あなたの負けです"
        return false
        
    else
        return true
    end
    
end #accimuitehoiのend

next_game = true

while next_game
    next_game = janken
end