class Player
  attr_accessor :name, :sign, :selections

  def initialize(name, sign)
    @name = name
    @sign = sign
    @selections = []
  end

  def choice(index)
    @selections.push(index)
    @selections
  end
end
