require './lib/passenger'

require 'rspec'


RSpec.describe Passenger do 

  describe '#initialize' do 
    it 'exists' do 
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    it 'has readable attributes' do 
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)

      expect(taylor.name).to eq("Taylor")
      expect(taylor.age).to eq(12)
    end
  end

  describe '#adult?' do 
    it 'checks if passenger is an adult' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

      expect(charlie.adult?).to be(true)
      expect(taylor.adult?).to be(false)
    end


  end



end