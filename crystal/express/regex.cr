# LEVEL: STD

re = /^[a-z]+[0-9]{2}$/
puts "#{re.matches?("abc12")} #{re.matches?("abc1")}"
