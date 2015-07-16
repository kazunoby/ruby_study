class Shunin < Yakushoku
  def ask
    puts "積極的に攻めましょう"
  end
  def seisan
    unchin = 14450
    teate = 3000
    puts "精算：#{(unchin + teate)}です。"
    return (unchin + teate)
  end
end
