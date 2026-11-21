// LEVEL: LANGUAGE

public class Main {
    record Pair(int n, String s) {}

    static Pair pair() { return new Pair(1, "a"); }

    public static void main(String[] args) {
        if (pair() instanceof Pair(int n, String s)) System.out.println(n + " " + s);
    }
}
