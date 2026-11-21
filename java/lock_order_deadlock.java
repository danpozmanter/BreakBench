import java.util.concurrent.locks.ReentrantLock;
public class Main {
    static void transfer(ReentrantLock first, ReentrantLock second) {
        first.lock();
        try {
            try { Thread.sleep(100); } catch (InterruptedException e) { }
            second.lock();
            second.unlock();
        } finally {
            first.unlock();
        }
    }

    public static void main(String[] args) throws Exception {
        ReentrantLock a = new ReentrantLock();
        ReentrantLock b = new ReentrantLock();
        Thread t1 = new Thread(() -> transfer(a, b));
        Thread t2 = new Thread(() -> transfer(b, a));
        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println("finished");
    }
}
