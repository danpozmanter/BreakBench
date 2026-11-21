# LEVEL: LANGUAGE

re = /\A[a-z]+[0-9]{2}\z/
puts "#{re.match?("abc12")} #{re.match?("abc1")}"
