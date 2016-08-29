class CookieBag

  def initialize
    @cookies = []
  end

  def add(cookie)
    if cookie_count >= 5
      puts "Bag is full"
    else
      @cookies.push cookie
    end
  end

  def take
    @cookies.pop
  end

  def cookie_count
    @cookies.count
  end

end
