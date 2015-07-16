class Tanto < Yakushoku
  def ask
    puts "まずは様子を見ましょう"
  end
  def seisan
    unchin = 13620
    teate = 2000
    puts "精算：#{(unchin + teate)}です。"
    return (unchin + teate)
  end
end
