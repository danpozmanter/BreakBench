import java.util.concurrent.locks.ReentrantLock;

public class Main {
    static final ReentrantLock lock = new ReentrantLock();
    static int balance = 100;

    static void withdraw(int amount) {
        lock.lock();
        if (amount > balance) {
            return; // CONTROL! lock.unlock(); return;
        }
        balance -= amount;
        lock.unlock();
    }

    public static void main(String[] args) throws InterruptedException {
        withdraw(500);
        Thread worker = new Thread(() -> withdraw(30));
        worker.start();
        worker.join();
        System.out.println(balance);
    }
}
