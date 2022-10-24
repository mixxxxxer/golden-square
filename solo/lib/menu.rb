class Menu
  def initialize
    @menu = []
  end

  def read_menu # => list of dishes
    @menu
  end

  def add_dish(dish)
    @menu << dish
  end
end