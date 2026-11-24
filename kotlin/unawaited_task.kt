import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

fun main() = runBlocking {
    var saved = 0
    launch { // CONTROL! launch {
        delay(50)
        saved += 1
    } // CONTROL! }.join()
    println(saved)
}
