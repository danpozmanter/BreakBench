// LEVEL: STD

import java.util.concurrent.CompletableFuture;

public class Main {
    public static void main(String[] args) {
        CompletableFuture<Integer> task = CompletableFuture.supplyAsync(() -> {
            try { Thread.sleep(50); } catch (InterruptedException e) { throw new RuntimeException(e); }
            return 7;
        });
        System.out.println("started");
        System.out.println(task.join());
    }
}
