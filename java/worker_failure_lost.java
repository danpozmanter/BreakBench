
public class Main {
    static long total = 0;

    public static void main(String[] args) throws InterruptedException {
        Thread worker = new Thread(() -> {
            for (String a : args) total += Long.parseLong(a);
        });
        worker.start();
        worker.join();
        System.out.println("total " + total);
    }
}
