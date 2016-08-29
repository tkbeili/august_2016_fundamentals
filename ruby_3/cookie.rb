class Cookie

  def initialize(sugar_amount, flour_amount)
    @sugar = sugar_amount
    @flour = flour_amount
  end

  def details
    "This cookie has #{@sugar}g of sugar and #{@flour}g of flour"
  end

  attr_reader :sugar
  # def sugar
  #   @sugar
  # end

  attr_writer :sugar
  # def sugar=(new_value)
  #   @sugar = new_value
  # end

  attr_accessor :flour
  # is equivalent to:
  # attr_reader :flour
  # attr_writer :flour

  def change_sugar(new_value)
    @sugar = new_value
  end

  # we call `eat` in this case an instance method. We call the method on objects:
  # c = Cookie.new
  # puts c.eat
  def eat
    puts @a
    'Eating the cookie!'
  end

  def bake(time_in_minutes)
    @a = 7
    puts @a
    puts mix_ingredients
    "Baking the cookie for #{time_in_minutes} minutes"
  end

  # this defined a class method that acts directly on the class and not on
  # instances of the class. I can't do:
  # c = Cookie.new
  # c.info # will give error
  # But I can do:
  # Cookie.info
  def self.info
    "I'm the Cookie class"
  end

  # method defined after the `private` keyword are treated as private methods
  private

  def mix_ingredients
    'mixing cookie ingredients'
  end

end
