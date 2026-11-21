// LEVEL: STD

public class Main {
    public static void main(String[] args) throws InterruptedException {
        Thread t = new Thread(() -> { throw new IllegalStateException("boom"); });
        boolean[] crashed = {false};
        t.setUncaughtExceptionHandler((th, e) -> crashed[0] = true);
        t.start();
        t.join();
        if (crashed[0]) System.out.println("worker crashed");
    }
}
