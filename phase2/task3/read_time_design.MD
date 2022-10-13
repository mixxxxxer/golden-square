# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# `read_time` return count minutes to read the text, speed 200 words a minute
time = read_time(text)

#* text: a string with words
#* time: a minutes in integer
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
read_time("1 2 3 4 5")
# => 1

# 2
read_time("") 
# => 0

# 3
read_time(TWO_HUNDRED WORDS) 
# => 1

# 4
read_time(THREE_HUNDRED_WORDS) 
# => 2

# 5
read_time(NINE_HUNDRED_WORDS) 
# => 5
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
