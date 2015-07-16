require_relative 'yakushoku'
require_relative 'shain'
require_relative 'tanto'
require_relative 'shunin'
require_relative 'bucho'

shain = Shain.new
shain.set_yakushoku_tanto  
shain.ask  
shain.set_yakushoku_shunin  
shain.ask
shain.set_yakushoku_bucho  
shain.ask
