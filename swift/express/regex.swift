// LEVEL: STD

let re = /^[a-z]+[0-9]{2}$/
print("abc12".wholeMatch(of: re) != nil, "abc1".wholeMatch(of: re) != nil)
