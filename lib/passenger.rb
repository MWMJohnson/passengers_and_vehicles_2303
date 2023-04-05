class Passenger

  attr_reader :name,
              :age

  def initialize(details)
    @name = details["name"]
    @age = details["age"]
    @is_driver = false
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end



end