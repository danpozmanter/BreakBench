import java.util.concurrent.atomic.AtomicLong;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        long count = 0; // BREAK!
        AtomicLong safe = new AtomicLong();
        Runnable add = () -> { for (int i = 0; i < 1_000_000; i++) count++; }; // CONTROL! Runnable add = () -> { for (int i = 0; i < 1_000_000; i++) safe.incrementAndGet(); };
        Thread a = new Thread(add);
        Thread b = new Thread(add);
        a.start();
        b.start();
        a.join();
        b.join();
        System.out.println(count); // CONTROL! System.out.println(safe.get());
    }
}
