public class Main {
    static class Counter {
        int count = 0;

        void increment() {
            count++;
        }
    }

    static void runTwice(Runnable f) {
        f.run();
        f.run();
    }

    public static void main(String[] args) {
        Counter counter = new Counter();
        runTwice(counter::increment);
        System.out.println(counter.count);
    }
}
