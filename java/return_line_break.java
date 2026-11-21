
public class Main {
    static long total(long a, long b) {
        return // CONTROL! return a + b;
            a + b; // BREAK!
    }

    public static void main(String[] args) {
        System.out.println(total(2, 3));
    }
}
