import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        BlockingQueue<Long> answer = new LinkedBlockingQueue<>(); // CONTROL! BlockingQueue<java.util.Optional<Long>> answer = new LinkedBlockingQueue<>();
        new Thread(() -> answer.add(Long.parseLong("x"))).start(); // CONTROL! new Thread(() -> { try { answer.add(java.util.Optional.of(Long.parseLong("x"))); } catch (NumberFormatException e) { answer.add(java.util.Optional.empty()); } }).start();
        System.out.println(answer.take()); // CONTROL! System.out.println(answer.take().map(String::valueOf).orElse("failed"));
    }
}
