// LEVEL: STD

public class Main {
    public static void main(String[] args) {
        long n = Long.parseLong(args[0]);
        try {
            Math.addExact(n, 1);
            System.out.println("ok");
        } catch (ArithmeticException e) {
            System.out.println("overflow");
        }
    }
}
