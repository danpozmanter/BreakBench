public class Main {
    static long add(long a, long b) {
        return a + b;
    }

    public static void main(String[] args) {
        String raw = args[0];
        System.out.println(add(raw, 3)); // BREAK!
        System.out.println(raw + add(1, 2));
    }
}
