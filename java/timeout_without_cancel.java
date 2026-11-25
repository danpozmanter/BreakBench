import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

public class Main {
    static final AtomicInteger balance = new AtomicInteger(100);
    static final CountDownLatch gate = new CountDownLatch(1);

    static void charge() throws InterruptedException {
        gate.await();
        balance.addAndGet(-30);
    }

    public static void main(String[] args) throws InterruptedException, ExecutionException {
        try (ExecutorService tasks = Executors.newCachedThreadPool()) {
            Future<?> attempt = tasks.submit(() -> {
                charge();
                return null;
            });
            try {
                attempt.get(100, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                gate.countDown();
                charge(); // BREAK!
            }
        }
        System.out.println(balance.get());
    }
}
