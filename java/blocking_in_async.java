import java.util.concurrent.CompletableFuture;

public class Main {
    static void job() {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    public static void main(String[] args) {
        long start = System.nanoTime();
        CompletableFuture.allOf(CompletableFuture.runAsync(Main::job), CompletableFuture.runAsync(Main::job)).join();
        System.out.println((System.nanoTime() - start) / 1_000_000 < 800 ? "concurrent" : "serial");
    }
}
