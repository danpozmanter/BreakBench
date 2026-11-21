// LEVEL: LANGUAGE

import java.util.concurrent.atomic.AtomicInteger;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        AtomicInteger count = new AtomicInteger();
        Thread t = new Thread(count::incrementAndGet);
        t.start();
        t.join();
        System.out.println(count.get());
        int plain = 0; new Thread(() -> plain++).start(); // REJECT!
    }
}
