class Dish # dish - menu item
  def initialize(title, description, price)
    @title = title
    @description = description
    @price = price
  end

  def get_title # => name of dish
    @title
  end

  def get_description
    @description
  end

  def get_price # => price of dish
    @price
  end
end