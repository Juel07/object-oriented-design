require "car"

describe CarFactory do
  it "can make a car" do
    car_double = double (:car)

    # You can also double classes themselves
    car_class_double = double :car_class, new: car_double

    car_factory = CarFactory.new(car_class_double)

    expect(car_double).to receive(:drive_away)
    car_factory.make_a_car
  end
end
