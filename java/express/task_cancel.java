// LEVEL: STD

public class Main {
    public static void main(String[] args) throws InterruptedException {
        Thread t = new Thread(() -> {
            while (!Thread.currentThread().isInterrupted()) {
                try { Thread.sleep(1); } catch (InterruptedException e) { return; }
            }
        });
        t.start();
        Thread.sleep(20);
        t.interrupt();
        t.join();
        System.out.println("stopped");
    }
}
