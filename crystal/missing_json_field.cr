require "json"

class User
  include JSON::Serializable
  property name : String
  property age : Int32
end

user = User.from_json(%({"name": "Ada"})) # CONTROL! user = User.from_json(%({"name": "Ada", "age": 36}))
puts user.age + 1
