import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
public class Main {
    public static void main(String[] args) throws Exception {
        int rounds = Integer.parseInt(args[0]);
        ExecutorService pool = Executors.newCachedThreadPool();
        for (int i = 0; i < rounds; i++) {
            final long seed = i;
            Callable<long[]> a = () -> { long[] buf = new long[8192]; java.util.Arrays.fill(buf, seed); return buf; };
            Callable<long[]> b = () -> { long[] buf = new long[8192]; java.util.Arrays.fill(buf, seed + 1); return buf; };
            long[] first = pool.invokeAny(List.of(a, b));
            if (first.length == 0) System.out.println("empty");
        }
        pool.shutdown();
        System.out.println("done");
    }
}
