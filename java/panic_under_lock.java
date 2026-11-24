import java.util.concurrent.locks.ReentrantLock;

public class Main {
    static final ReentrantLock lock = new ReentrantLock();
    static int debits;
    static int credits;

    static void post() {
        lock.lock();
        try {
            debits += 50;
            if (debits > 0) throw new IllegalStateException("crash mid-update"); // CONTROL! if (debits > 0) { debits -= 50; throw new IllegalStateException("crash mid-update"); }
            credits += 50;
        } finally {
            lock.unlock();
        }
    }

    public static void main(String[] args) throws InterruptedException {
        Thread worker = new Thread(Main::post);
        worker.start();
        worker.join();
        lock.lock();
        try {
            System.out.println(debits == credits ? "balanced" : "unbalanced");
        } finally {
            lock.unlock();
        }
    }
}
