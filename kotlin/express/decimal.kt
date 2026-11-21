// LEVEL: STD

import java.math.BigDecimal

fun main() {
    val a = BigDecimal("0.1") + BigDecimal("0.2")
    println(if (a.compareTo(BigDecimal("0.3")) == 0) "equal" else "not equal")
}
