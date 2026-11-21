// LEVEL: STD

public class Main {
    public static void main(String[] args) {
        Thread.setDefaultUncaughtExceptionHandler((t, e) -> System.out.println("hook ran"));
        throw new IllegalStateException("boom");
    }
}
