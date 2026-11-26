fun main() {
    val jobs = mutableListOf(1, 2, 3)
    assert(jobs.removeLast() == 3)
    println(jobs.size)
}
