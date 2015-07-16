require_relative 'shain'

class Bucho < Shain
  def standup
    puts "部長はちょっと偉そうに起立した"
  end

  def calculate_salary(kihonkyu)
    kihonkyu * 3
  end
end
