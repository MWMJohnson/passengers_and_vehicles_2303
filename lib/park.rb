class Park

  attr_reader :name,
              :admission_price,
              :vehicles,
              :passengers

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers = vehicle.passengers
    @vehicles
  
  end

  


  def revenue


  end


end