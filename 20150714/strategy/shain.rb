class Shain
  def initialize
    @yakushoku = Yakushoku.new
  end

  def ask
    @yakushoku.ask
  end
  
  def set_yakushoku_tanto  
    @yakushoku = Tanto.new  
  end  
  def set_yakushoku_shunin  
    @yakushoku = Shunin.new  
  end  
  def set_yakushoku_bucho  
    @yakushoku = Bucho.new  
  end  
end  