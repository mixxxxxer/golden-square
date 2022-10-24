require 'dish'

RSpec.describe Dish do
  it 'should return title' do
    dish = Dish.new('sup', 'tomatoes sup', 5)
    expect(dish.get_title).to eq 'sup'
  end
  it 'should return description' do
    dish = Dish.new('sup', 'tomatoes sup', 5)
    expect(dish.get_description).to eq 'tomatoes sup'
  end
  it 'should return price' do
    dish = Dish.new('sup', 'tomatoes sup', 5)
    expect(dish.get_price).to eq 5
  end
end