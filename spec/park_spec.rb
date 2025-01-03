require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe do
    before(:each) do
        @park = Park.new("Rocky Mountain National Park", 20)
        @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle2 = Vehicle.new("2019", "Volkswagon", "Jetta")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @vehicle2.add_passenger(@charlie)
        @vehicle1.add_passenger(@taylor)
        @vehicle1.add_passenger(@jude)

    end

    describe '#initialize' do
        it "can initalize" do
            expect(@park).to be_an_instance_of(Park)
        end
    end

    describe "#add_vehicle" do
        it "a vehicle enters the park" do
           
            @park.add_vehicle(vehicle)

            expect(@park.vehicles).to eq(@charlie, @taylor, @jude)
            expect(@park.vehicles).to be_an(Array)
            expect(@park.passengers).to eq([])
        end
    end

end

