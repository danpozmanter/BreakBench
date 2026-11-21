public class Main {
    static void show(double f) { System.out.println((long) f); }

    public static void main(String[] args) {
        long n = Long.parseLong(args[0]);
        show(n); // CONTROL! System.out.println(n);
    }
}
