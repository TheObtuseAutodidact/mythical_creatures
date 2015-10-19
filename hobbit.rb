class Hobbit
  attr_reader :disposition, :age

  def initialize(name, disposition= 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def name
    @name
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    age > 32
  end

  def old?
    age > 100
  end

  def has_ring?
    hobbit.name == "Frodo"
  end

  def is_short?
    true
  end

end
