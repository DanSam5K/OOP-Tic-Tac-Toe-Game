class Player 
  attr_accessor :name, :sign, :selections
  def initialize (name, sign)
    @name=name
    @sign=sign
    @selections=[]
  end
  # store_selection  creates an array with the numbers that the player chooses
  def choice (index)
    @selections.push(index)
    @selections
  end
end
