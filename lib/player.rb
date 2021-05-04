class Player 
  def initialize (name, sign)
    @name=name
    @sign=sign
  end
  # store_selection  creates an array with the numbers that the player chooses
  @selections=[]
  def store_selection (selection)
    @selections.push(selection)
    @selections
  end
end
