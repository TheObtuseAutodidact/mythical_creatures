class Werewolf

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @change_count = 0
  end

  def name
    @name
  end

  def location
    @location
  end

  def human?
    @human
  end

  def respond_to?(hash = {:change! => true})
    hash
  end

  def change!
    @change_count += 1
    if @human == true
      @human = false
    else
      @human = true
    end
  end

  def werewolf?
    @human == false
  end

  def hungry?
    @hungry = true if @change_count > 0
  end

end
