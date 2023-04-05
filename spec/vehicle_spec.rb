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

#   describe '#adult?' do 
#   it 'checks if passenger is an adult' do
#     charlie = Passenger.new({"name" => "Charlie", "age" => 18})
#     taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

#     expect(charlie.adult?).to be(true)
#     expect(taylor.adult?).to be(false)
#   end
# end


end