// LEVEL: LANGUAGE

public class Main {
    static int walk(int n) { return walk(n + 1) + 1; }

    public static void main(String[] args) {
        try { walk(0); } catch (StackOverflowError e) { System.out.println("stack overflow"); }
    }
}
