class Character
  attr_reader :name, :actor, :salary

  def initialize(information)
    @name = information[:name]
    @actor = information[:actor]
    @salary = information[:salary]
  end

  def salary_greater_than_500000?
    @salary > 500000
  end

  def name_with_all_uppercase_letters?
    @name == @name.upcase
  end

end
