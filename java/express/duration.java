// LEVEL: STD

import java.time.Duration;

public class Main {
    public static void main(String[] args) {
        Duration total = Duration.ofMillis(1500).plus(Duration.ofMillis(500));
        Duration wrong = total.plus(5); // REJECT!
        System.out.println(total.toMillis());
    }
}
