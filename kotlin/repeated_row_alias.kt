fun main() {
    val grid = List(3) { MutableList(3) { 0 } }
    grid[0][0] = 1
    println(grid.sumOf { row -> row.count { it == 1 } })
}
