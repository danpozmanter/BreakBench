Account = Struct.new(:balance)
accounts = [Account.new(100)]
accounts.each { |acct| acct.balance += 50 }
puts accounts[0].balance
