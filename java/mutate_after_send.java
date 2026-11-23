import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        BlockingQueue<List<Integer>> lists = new LinkedBlockingQueue<>();
        CountDownLatch goOn = new CountDownLatch(1);
        Thread worker = new Thread(() -> {
            try {
                List<Integer> received = lists.take();
                goOn.await();
                System.out.println(received.get(0));
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        });
        worker.start();
        List<Integer> list = new ArrayList<>(List.of(1, 2, 3));
        lists.put(list);
        list.set(0, 99);
        goOn.countDown();
        worker.join();
    }
}
