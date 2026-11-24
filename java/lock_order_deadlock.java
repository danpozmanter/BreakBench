import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.CountDownLatch;
public class Main {
    static void transfer(ReentrantLock first, ReentrantLock second, CountDownLatch ready) {
        first.lock();
        try {
            ready.countDown(); // BREAK!
            try { ready.await(); } catch (InterruptedException e) { Thread.currentThread().interrupt(); return; } // BREAK!
            second.lock();
            second.unlock();
        } finally {
            first.unlock();
        }
    }

    public static void main(String[] args) throws Exception {
        ReentrantLock a = new ReentrantLock();
        ReentrantLock b = new ReentrantLock();
        CountDownLatch ready = new CountDownLatch(2);
        Thread t1 = new Thread(() -> transfer(a, b, ready));
        Thread t2 = new Thread(() -> transfer(b, a, ready)); // CONTROL! Thread t2 = new Thread(() -> transfer(a, b, ready));
        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println("finished");
    }
}
