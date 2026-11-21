import java.util.concurrent.locks.ReentrantLock;

public class Main {
    static final ReentrantLock lock = new ReentrantLock();
    static int balance;

    static void deposit(int amount) {
        lock.lock();
        try {
            balance += amount;
        } finally {
            lock.unlock();
        }
    }

    public static void main(String[] args) {
        lock.lock();
        try {
            deposit(10);
        } finally {
            lock.unlock();
        }
        System.out.println("done");
    }
}
