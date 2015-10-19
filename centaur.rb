class Centaur

  attr_accessor :cranky_counter, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @cranky_counter = 0
    @sick = false
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def shoot
    if cranky? || !standing?
      "NO!"
    else
      @cranky_counter += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || !standing?
      "NO!"
    else
      @cranky_counter += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @cranky_counter > 2
      @cranky = true
    else
      @cranky
    end
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      "NO!"
    else
      @cranky_counter = 0
      @cranky = false
    end
  end

  def respond_to?(hash = {lay_down: true})
    hash
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drinks_potion
    if @standing || @cranky_counter > 2
      @cranky_counter = 0
      @cranky = false
    elsif @standing && @cranky_counter < 3 && @cranky_counter > 0
      @sick = true
    else
      "NO!"
    end
  end

end
