// LEVEL: STD

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class Main {
    public static void main(String[] args) throws Exception {
        CompletableFuture<Integer> task = CompletableFuture.supplyAsync(() -> {
            try { Thread.sleep(5000); } catch (InterruptedException e) { return 0; }
            return 1;
        });
        try {
            task.get(100, TimeUnit.MILLISECONDS);
            System.out.println("done");
        } catch (TimeoutException e) {
            System.out.println("timed out");
        }
    }
}
