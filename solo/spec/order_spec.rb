require 'order'

RSpec.describe Order do
  it 'should return empty order list' do
    user = double :user
    order = Order.new(user)
    expect(order.show_order).to eq({})
  end
  it 'should return order with 2 different dishes' do
    user = double :user
    order = Order.new(user)
    dish1 = double :dish, get_price: 5
    dish2 = double :dish, get_price: 10
    order.add_item(dish1)
    order.add_item(dish2)
    expect(order.show_order).to eq({ dish1 => 1, dish2 => 1 })
  end

  it 'should return empty order if add and delete item' do
    user = double :user
    order = Order.new(user)
    dish1 = double :dish, get_price: 5
    order.add_item(dish1)
    order.delete_item(dish1)
    expect(order.show_order).to eq({})
  end

  it 'should return 2 same items if add 3 time and delete one' do
    user = double :user
    order = Order.new(user)
    dish1 = double :dish, get_price: 5
    order.add_item(dish1)
    order.add_item(dish1)
    order.add_item(dish1)
    order.delete_item(dish1)
    expect(order.show_order).to eq({ dish1 => 2})
  end

  it 'should return sum of 3 dishes' do
    user = double :user
    order = Order.new(user)
    dish1 = double :dish, get_price: 5
    order.add_item(dish1)
    order.add_item(dish1)
    order.add_item(dish1)
    expect(order.total_sum).to eq(15)
  end

  it 'should return false if order not confirmed' do
    user = double :user
    order = Order.new(user)
    dish1 = double :dish, get_price: 5
    order.add_item(dish1)
    expect(order.confirmed?).to eq(false)
  end

  it 'should return true after order confirm' do
    user = double :user
    order = Order.new(user)
    dish1 = double :dish, get_price: 5
    order.add_item(dish1)
    expect(order.confirmed?).to eq(false)
  end
end