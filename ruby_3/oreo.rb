require "./cookie.rb"

# We define a class named `Oreo` in here that inherits from the `Cookie` class
# We call Oreo: child class or subclass
# We call Cookie: parent class or superclass
# the Oreo cookie will have all the methods and attributes defines in it as if
# you copied everything from the `Cookie` class
class Oreo < Cookie
  attr_accessor :filling_type

  # this overrides (or redefine) the details method for Oreo objects
  def details
    "This oreo cookie has #{@sugar}g of sugar, #{@flour}g of flour and #{@filling_type} filling type"
  end

  def dip_in_milk
    "Dipping the Oreo cookie in milk!"
  end

end
