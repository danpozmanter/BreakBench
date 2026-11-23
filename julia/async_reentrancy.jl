const balance = Ref(100)

function withdraw(amount)
    if balance[] >= amount
        sleep(0.01)
        balance[] -= amount
    end
end

@sync begin
    @async withdraw(80)
    @async withdraw(80)
end
println(balance[])
