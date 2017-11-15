#Problem 1

class Calculator

  def initialize(value1, value2)
    @value1 = value1
    @value2 = value2
  end

  def add
    value = @value1 + @value2
    "Calculated answer is #{value}"
  end

  def subtract
    value = @value1 - @value2
    "Calculated answer is #{value}"
  end

  def multiply
    value = @value1 * @value2
    "Calculated answer is #{value}"
  end

  def divide
    value = @value1.div @value2
    "Calculated answer is #{value}"
  end
end

my_calc = Calculator.new(7, 15)


#Problem 2
class Elevator
  
  attr_accessor :floor, :hotel

  def initialize(hotel, floor)
    @floor = floor.to_i
    @hotel = hotel
  end

  def cheery_greeting
    if @floor == 0
      "Welcome! You are on the basement floor"
    else 
      "Welcome! You are on floor #{@floor}"
    end
  end

  def go_up
    if @floor >= 12
      puts "Sorry the #{@hotel} hotel does not have that floor"
      @floor = 12
    else
      @floor += 1
      cheery_greeting
    end
  end

  def go_down
    if @floor <= 0
        puts "Sorry the #{@hotel} hotel does not have that floor."
        @floor = 0
      else
        @floor -= 1
        cheery_greeting
      end
  end
end
  
intercontinental = Elevator.new("Intercontinental", 1)