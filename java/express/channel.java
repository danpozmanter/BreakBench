// LEVEL: STD

import java.util.concurrent.LinkedBlockingQueue;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        LinkedBlockingQueue<Integer> queue = new LinkedBlockingQueue<>();
        Thread t = new Thread(() -> { for (int v = 1; v <= 3; v++) queue.add(v); });
        t.start();
        int a = queue.take(), b = queue.take(), c = queue.take();
        t.join();
        System.out.println(a + " " + b + " " + c);
    }
}
