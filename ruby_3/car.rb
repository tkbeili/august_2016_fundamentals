class Car

  def initialize(model, type, capacity = 4)
    # @model, @type, @capacity = model, type, capacity
    @model = model
    @type = type
    @capacity = capacity
  end

  def self.max_speed
    200
  end

  def self.drive
    print "Driving"
  end

  def stop
    print "Stopping"
  end

  def park
    print "parking"
  end

  private

  def pump_gas
    print "putting gas in the car"
  end

  def ignite_engine
    print 'Starting the car'
  end

end
