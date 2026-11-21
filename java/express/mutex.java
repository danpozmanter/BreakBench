// LEVEL: STD

import java.util.concurrent.locks.ReentrantLock;

public class Main {
    static long counter;

    public static void main(String[] args) throws InterruptedException {
        ReentrantLock lock = new ReentrantLock();
        Runnable work = () -> {
            for (int i = 0; i < 100_000; i++) {
                lock.lock();
                try { counter++; } finally { lock.unlock(); }
            }
        };
        Thread a = new Thread(work), b = new Thread(work);
        a.start(); b.start();
        a.join(); b.join();
        System.out.println(counter);
    }
}
