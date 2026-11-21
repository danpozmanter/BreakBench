// LEVEL: STD

public class Main {
    static StackTraceElement[] inner() { return Thread.currentThread().getStackTrace(); }

    public static void main(String[] args) {
        boolean named = false;
        for (StackTraceElement e : inner()) named |= e.getMethodName().equals("inner");
        System.out.println(named ? "inner" : "missing");
    }
}
