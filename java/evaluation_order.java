public class Main {
    static int n = 0;

    static int next() { return ++n; }

    static String pair(int a, int b) { return a + " " + b; }

    public static void main(String[] args) {
        System.out.println(pair(next(), next()));
    }
}
