// LEVEL: LANGUAGE

public class Main {
    static void work() {
        try { throw new IllegalStateException("boom"); } finally { System.out.println("cleanup"); }
    }

    public static void main(String[] args) {
        try { work(); } catch (IllegalStateException e) { System.out.println("recovered"); }
    }
}
