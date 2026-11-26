public class Main {
    static final long LIMIT = base() * 2; // BREAK!
    static final long BASE = Long.parseLong("10");
    // CONTROL! static final long LIMIT = base() * 2;

    static long base() {
        return BASE;
    }

    public static void main(String[] args) {
        System.out.println(LIMIT);
    }
}
