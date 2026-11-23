import java.util.concurrent.CountDownLatch;

public class Main {
    static final Object lock = new Object();
    static final CountDownLatch checked = new CountDownLatch(2);
    static boolean claimed = false;
    static int winners = 0;

    static void claim() {
        boolean available;
        synchronized (lock) { available = !claimed; } // BREAK!
        // CONTROL! synchronized (lock) { available = !claimed; if (available) claimed = true; }
        checked.countDown();
        try { checked.await(); } catch (InterruptedException e) { Thread.currentThread().interrupt(); return; }
        if (available) synchronized (lock) { claimed = true; winners++; }
    }

    public static void main(String[] args) throws InterruptedException {
        Thread a = new Thread(Main::claim), b = new Thread(Main::claim);
        a.start(); b.start(); a.join(); b.join();
        System.out.println(winners);
    }
}
