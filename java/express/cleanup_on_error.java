// LEVEL: LANGUAGE

public class Main {
    static void use(boolean fail) {
        try {
            if (fail) throw new IllegalStateException("bad");
        } finally {
            System.out.println("released");
        }
    }

    public static void main(String[] args) {
        use(false);
        try { use(true); } catch (IllegalStateException e) {}
    }
}
