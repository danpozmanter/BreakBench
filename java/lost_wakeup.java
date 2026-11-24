public class Main {
    public static void main(String[] args) throws InterruptedException {
        Object woken = new Object();
        // CONTROL! boolean[] ready = {false};
        synchronized (woken) {
            woken.notify(); // CONTROL! ready[0] = true; woken.notify();
        }
        Thread worker = new Thread(() -> {
            synchronized (woken) {
                try {
                    woken.wait(); // CONTROL! while (!ready[0]) woken.wait();
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
