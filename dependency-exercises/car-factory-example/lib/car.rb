# Example of how to use class doubles

class CarFactory
  def initialize(car_class = Car) # you can inject classes themselves
    @car_class = car_class
  end

  def make_a_car
    car = @car_class.new
    car.drive_away
  end
end

class Car
  def drive_away
    "drives"
  end
end
