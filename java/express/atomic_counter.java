// LEVEL: STD

import java.util.concurrent.atomic.AtomicLong;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        AtomicLong counter = new AtomicLong();
        Runnable work = () -> { for (int i = 0; i < 100_000; i++) counter.incrementAndGet(); };
        Thread a = new Thread(work), b = new Thread(work);
        a.start(); b.start();
        a.join(); b.join();
        System.out.println(counter.get());
    }
}
