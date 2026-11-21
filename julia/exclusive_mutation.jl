mutable struct Account
    balance::Int
end

function transfer(from::Account, to::Account, amount::Int)
    new_from = from.balance - amount
    new_to = to.balance + amount
    from.balance = new_from
    to.balance = new_to
end

function main()
    a = Account(100)
    transfer(a, a, 30)
    println(a.balance)
end

main()
