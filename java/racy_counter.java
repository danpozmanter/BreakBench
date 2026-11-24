public class Main {
    static long counter;

    public static void main(String[] args) throws InterruptedException {
        Thread[] threads = new Thread[8];
        for (int t = 0; t < 8; t++) {
            threads[t] = new Thread(() -> {
                for (int i = 0; i < 1_000_000; i++) counter++;
            });
            threads[t].start();
        }
        for (Thread t : threads) t.join();
        System.out.println(counter);
    }
}
