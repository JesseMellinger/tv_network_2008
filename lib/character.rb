class Character
  attr_reader :name

  def initialize(information)
    @name = information[:name]
    @actor = information[:actor]
    @salary = information[:salary]
  end

end
