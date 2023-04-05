require './lib/vehicle'
require './lib/passenger'
require 'rspec'


RSpec.describe Vehicle do 
  describe '#initialize' do 
    it 'exists' do 
      vehicle = Vehicle.new("2001", "Honda", "Civic")   
      expect(vehicle).to be_a(Vehicle)
    end

    it 'has readable attributes' do 
      vehicle = Vehicle.new("2001", "Honda", "Civic")   
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end

  describe '#speeding?' do 
    it 'checks if a vehicle is speeding' do
      vehicle = Vehicle.new("2001", "Honda", "Civic") 

      expect(vehicle.speeding?).to be(false)
    end
  end

  describe '#speed' do 
    it 'makes the vehicle speed' do
      vehicle = Vehicle.new("2001", "Honda", "Civic") 

      expect(vehicle.speeding?).to be(false)
      vehicle.speed
      expect(vehicle.speeding?).to be(true)
    end
  end

  # describe '#passengers' do 
  #   it 'displays the passengers in the vehicle' do
  #     vehicle = Vehicle.new("2001", "Honda", "Civic") 

  #     charlie = Passenger.new({"name" => "Charlie", "age" => 18})
  #     jude = Passenger.new({"name" => "Jude", "age" => 20})    
  #     taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

  #     expect(vehicle.speeding?).to be(false)
  #     vehicle.speed
  #     expect(vehicle.speeding?).to be(true)
  #   end
  # end


end