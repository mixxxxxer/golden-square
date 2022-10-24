require 'menu'

RSpec.describe Menu do
  it 'should return empty menu' do
    menu = Menu.new
    expect(menu.read_menu).to eq []
  end
  it 'should return menu with 3 dishes' do
    menu = Menu.new
    dish = double :dish
    menu.add_dish(dish)
    menu.add_dish(dish)
    menu.add_dish(dish)
    expect(menu.read_menu).to eq [dish, dish, dish]
  end
end