data class Account(var balance: Int)

fun main() {
    val accounts = listOf(Account(100))
    for (acct in accounts) acct.balance += 50
    println(accounts[0].balance)
}
