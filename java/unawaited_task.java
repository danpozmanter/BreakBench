import java.util.concurrent.atomic.AtomicInteger;
public class Main {
    public static void main(String[] args) throws InterruptedException {
        AtomicInteger saved = new AtomicInteger();
        Thread task = new Thread(() -> {
            try { Thread.sleep(50); } catch (InterruptedException e) { return; }
            saved.incrementAndGet();
        });
        task.start(); // CONTROL! task.start(); task.join();
        System.out.println(saved.get());
    }
}
