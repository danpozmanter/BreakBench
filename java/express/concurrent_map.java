// LEVEL: STD

import java.util.concurrent.ConcurrentHashMap;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        ConcurrentHashMap<Integer, Integer> m = new ConcurrentHashMap<>();
        Thread[] ts = new Thread[4];
        for (int t = 0; t < 4; t++) {
            int base = t * 1000;
            ts[t] = new Thread(() -> { for (int k = 0; k < 1000; k++) m.put(base + k, k); });
            ts[t].start();
        }
        for (Thread t : ts) t.join();
        System.out.println(m.size());
    }
}
