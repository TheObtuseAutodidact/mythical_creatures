class Wizard
  attr_accessor :bearded

  def initialize(name, bearded = {bearded: true})
    @name = name
    @bearded = bearded
    @rested = true
    @spellcount = 0
  end

  def name
    @name
  end

  def bearded?
     @bearded[:bearded]
  end

  def incantation(string)
    "sudo #{string}"
  end

  def rested?
    @rested = @spellcount < 3
  end

  def cast
    @spellcount += 1
    "MAGIC MISSLE!"
  end

end



wizard = Wizard.new("Zap")
wizard.bearded?
puts wizard.bearded.inspect
