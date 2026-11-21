// LEVEL: STD

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;

public class Main {
    public static void main(String[] args) {
        CompletableFuture<Integer> task = CompletableFuture.supplyAsync(() -> { throw new IllegalArgumentException("bad input"); });
        try {
            task.join();
        } catch (CompletionException e) {
            System.out.println("worker failed: " + e.getCause().getMessage());
        }
    }
}
