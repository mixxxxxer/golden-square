class Order
  def initialize(user)
    @user = user
    @order = Hash.new(0)
    @confirm = false
  end

  def add_item(dish)
    @order[dish] += 1
  end

  def show_order # => list of dishes in order
    @order
  end

  def total_sum # => total order sum
    @order.collect { |key, value| key.get_price * value }.sum
  end

  def delete_item(dish)
    @order[dish] == 1 ? @order.delete(dish) : @order[dish] -= 1
  end

  def confirmed?
    @confirm
  end

  def confirm_order
    @confirm = true
  end

  def delivery_status
  end
end