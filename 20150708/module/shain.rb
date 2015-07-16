require_relative 'salary'

class Shain
  include Salary
  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end

end
