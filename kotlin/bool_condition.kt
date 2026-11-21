fun main() {
    if ("x".compareTo("x") == 0) println("same")
    if ("x".compareTo("x")) println("different") // BREAK!
}
