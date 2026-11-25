import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class Main {
    static int firstAnswer(List<Thread> workers) throws InterruptedException {
        BlockingQueue<Integer> answers = new LinkedBlockingQueue<>();
        for (int i = 0; i < 2; i++) {
            Thread worker = new Thread(() -> answers.add(42));
            worker.start();
            workers.add(worker);
        }
        return answers.take();
    }

    public static void main(String[] args) throws InterruptedException {
        List<Thread> workers = new ArrayList<>();
        System.out.println(firstAnswer(workers));
        for (Thread worker : workers) {
            worker.join();
        }
        System.out.println("done");
    }
}
