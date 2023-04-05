require './lib/park'
require './lib/vehicle'
require './lib/passenger'
require 'rspec'

RSpec.describe Park do 
  describe '#initialize' do 
    it 'exists' do 
      park1 = Park.new("Flagtown", 20)   
      expect(park1).to be_a(Park)
    end

    it 'has readable attributes' do 
      park1 = Park.new("Flagtown", 20)  
      expect(park1.name).to eq("Flagtown")
      expect(park1.admission_price).to eq(20)
      expect(park1.vehicles).to eq([])
      expect(park1.passengers).to eq([])
    end
  end

  describe '#add_vehicle(vehicle)' do 
    it 'tracks vehicles entered into the park' do 
      park1 = Park.new("Flagtown", 20)   

      honda = Vehicle.new("2001", "Honda", "Civic") 
      ford = Vehicle.new("2005", "Ford", "F150") 

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      jude = Passenger.new({"name" => "Jude", "age" => 20})  

      honda.add_passenger(charlie)
      ford.add_passenger(jude)
      ford.add_passenger(taylor)

      expect(park1.vehicles).to eq([])
      expect(park1.add_vehicle(honda)).to eq([honda])
      expect(park1.add_vehicle(ford)).to eq([honda,ford])
      expect(park1.vehicles).to eq([honda,ford])
    end

    it 'tracks passengers entered into the park' do 
      park1 = Park.new("Flagtown", 20)   

      honda = Vehicle.new("2001", "Honda", "Civic") 
      ford = Vehicle.new("2005", "Ford", "F150") 

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      jude = Passenger.new({"name" => "Jude", "age" => 20})  

      honda.add_passenger(charlie)
      ford.add_passenger(jude)
      ford.add_passenger(taylor)

      expect(park1.passengers).to eq([])
      park1.add_vehicle(honda)
      
      expect(park1.passengers).to eq([charlie])
    end




  end

    # it 'has readable attributes' do 
    #   park1 = Park.new("Flagtown", 20)  
    #   expect(park1.name).to eq("Flagtown")
    #   expect(park1.admission_price).to eq(20)
    #   expect(park1.vehicles).to eq([])
    # end
  # end



end
