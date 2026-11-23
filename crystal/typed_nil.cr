class ValidationError < Exception
end

def validate(name : String) : Exception?
  problem : ValidationError? = name.empty? ? ValidationError.new("invalid name") : nil
  problem
end

puts validate("ada") ? "invalid" : "valid"
