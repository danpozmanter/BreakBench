# LEVEL: LANGUAGE

class ParseError
end

def parse_port(s : String) : Int32 | ParseError
  s.to_i? || ParseError.new
end

case r = parse_port("x")
in Int32 then puts r
in ParseError then puts "error"
end
