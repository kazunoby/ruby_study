require_relative 'shain'

class Syunin < Shain
  def standup
    puts "主任はビシッと起立した"
  end

  def calculate_salary(kihonkyu)
    kihonkyu * 2 + 1
  end
end
