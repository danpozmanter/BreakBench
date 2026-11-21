import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        Map<Long, Long> map = new HashMap<>();
        Thread[] threads = new Thread[8];
        for (int t = 0; t < 8; t++) {
            final long base = t * 100_000L;
            threads[t] = new Thread(() -> {
                for (long k = 0; k < 100_000; k++) map.put(base + k, k);
            });
            threads[t].start();
        }
        for (Thread t : threads) t.join();
        System.out.println(map.size());
    }
}
