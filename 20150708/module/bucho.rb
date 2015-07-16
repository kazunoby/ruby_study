require_relative 'shain'

class Bucho < Shain
  include Salary
  def initialize(kihon)
    @kihonkyu = kihon * 3
  end

  def teate
    1
  end

end
