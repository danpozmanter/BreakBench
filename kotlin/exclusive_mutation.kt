class Account(var balance: Int)

fun transfer(from: Account, to: Account, amount: Int) {
    val newFrom = from.balance - amount
    val newTo = to.balance + amount
    from.balance = newFrom
    to.balance = newTo
}

fun main() {
    val a = Account(100)
    transfer(a, a, 30)
    println(a.balance)
}
