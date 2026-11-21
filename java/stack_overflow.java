public class Main {
    static long walk(long n) {
        if (n == 0) return 0;
        return (walk(n - 1) * 31 + n) % 1_000_000_007L;
    }

    public static void main(String[] args) {
        System.out.println(walk(Long.parseLong(args[0])));
    }
}
