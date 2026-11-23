public class Main {
    public static void main(String[] args) throws InterruptedException {
        Object woken = new Object();
        synchronized (woken) {
            woken.notify();
        }
        Thread worker = new Thread(() -> {
            synchronized (woken) {
                try {
                    woken.wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            System.out.println("done");
        });
        worker.start();
        worker.join();
    }
}
