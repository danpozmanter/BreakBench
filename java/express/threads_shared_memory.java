// LEVEL: STD

public class Main {
    public static void main(String[] args) throws InterruptedException {
        int[] slots = new int[10];
        Thread a = new Thread(() -> { for (int i = 0; i < 5; i++) slots[i] = i; });
        Thread b = new Thread(() -> { for (int i = 5; i < 10; i++) slots[i] = i; });
        a.start();
        b.start();
        a.join();
        b.join();
        int sum = 0;
        for (int x : slots) sum += x;
        System.out.println(sum);
    }
}
