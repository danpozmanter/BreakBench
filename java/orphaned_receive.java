import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        BlockingQueue<Long> answer = new LinkedBlockingQueue<>();
        new Thread(() -> answer.add(Long.parseLong("x"))).start();
        System.out.println(answer.take());
    }
}
