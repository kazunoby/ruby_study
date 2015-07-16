 class Unit
  attr_accessor :name, :contacts
  def initialize(name, contacts)
    @name, @contacts = name, contacts
  end

  def work
    puts `働きます！`
  end
end
  