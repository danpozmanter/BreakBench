struct Account # CONTROL! mutable struct Account
    balance::Int
end

function main()
    accounts = [Account(100)]
    for acct in accounts
        acct.balance += 50
    end
    println(accounts[1].balance)
end

main()
