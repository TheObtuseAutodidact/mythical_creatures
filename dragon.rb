class Dragon

  attr_reader :name, :rider, :color
  attr_accessor :hungry, :hungry_count

  def initialize(name, color, rider)
    @name = name
    @color = color.to_sym
    @rider = rider
    @hungry = true
    @hungry_count = 0
  end

  def hungry?
    if @hungry_count < 3
      @hungry
    else
      @hungry = false
      @hungry
    end
  end

  def eat
    @hungry_count += 1
  end

end
