class Bucho < Yakushoku
  def ask
    puts "ガンガン行こうぜ！"
  end
  def seisan
    unchin = 18690
    teate = 5000
    puts "精算：#{(unchin + teate)}です。"
    return (unchin + teate)
  end
end
