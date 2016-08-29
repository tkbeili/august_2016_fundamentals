require "./animal.rb"

class Cat < Animal

  def catch(bird)
    @bird = bird
    puts "The cat #{@name} caught bird #{bird.name}"
  end

  def eat
    if @bird
      puts "The car #{@name} ate the bird #{@bird.name}"
      @bird = nil
    else
      puts "No bird to eat!"
    end
  end

end
