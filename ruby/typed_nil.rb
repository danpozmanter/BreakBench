class ValidationError < StandardError
end

def validate(name)
  problem = name.empty? ? ValidationError.new("invalid name") : nil
  problem
end

puts validate("ada") ? "invalid" : "valid"
