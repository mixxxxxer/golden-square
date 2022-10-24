
# Multi-Class Design 

## 1. Describe the Problem

<!-- As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered. -->

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
./multiclass.html
```

_Also design the interface of each class in more detail._

```ruby
class Dish # dish - menu item
  def initilize(title, discription, price)
  def get_name # => name of dish
  def get_price # => price of dish
end

class Menu
  def get_menu # => list of dishes
  def add_dish(dish)
end

class Order
  def initilize(user)
  def add_item(dish)
  def show_order # => list of dishes in order
  def count_sum # => total order sum
  def delete_item(number)
  def confirm
  def delivery_status
end

class User
  def initilize(name, number)
  def create_order
  def order_list
end

```
## 3. Create Examples as Integration Tests
_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._
```ruby

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
  # class TodoEntrie tests
  #1

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
