require_relative 'tanto'
require_relative 'syunin'
require_relative 'bucho'


shain = Tanto.new
shain.standup
puts "私の給料は#{ shain.calculate_salary(100)}円です。"

shain = Syunin.new
shain.standup
puts "私の給料は#{ shain.calculate_salary(100)}円です。"

shain = Bucho.new
shain.standup
puts "私の給料は#{ shain.calculate_salary(100)}円です。"
