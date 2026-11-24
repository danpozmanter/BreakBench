
public class Main {
    static long total = 0;
    // CONTROL! static boolean failed = false;

    public static void main(String[] args) throws InterruptedException {
        Thread worker = new Thread(() -> {
            for (String a : args) total += Long.parseLong(a); // CONTROL! try { for (String a : args) total += Long.parseLong(a); } catch (NumberFormatException e) { failed = true; }
        });
        worker.start();
        worker.join();
        System.out.println("total " + total); // CONTROL! System.out.println(failed ? "failed" : "total " + total);
    }
}
