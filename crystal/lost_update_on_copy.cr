record Account, balance : Int32

accounts = [Account.new(100)]
accounts.each { |acct| acct.balance += 50 } # BREAK!
puts accounts[0].balance
