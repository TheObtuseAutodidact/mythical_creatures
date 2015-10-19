class Medusa

  def initialize(name)
    @name = name
    @statues = {}
  end

  def name
    @name
  end

  def respond_to?(hash = {stare: true, statues: true})
    hash
  end

  def statues
    @statues
  end

  def stare(name)
    @statues[:statues] = name
  end




end
