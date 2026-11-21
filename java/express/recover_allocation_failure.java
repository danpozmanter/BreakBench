// LEVEL: STD

public class Main {
    public static void main(String[] args) {
        long n = Long.parseLong(args[0]);
        try {
            byte[][] parts = new byte[(int) (n / Integer.MAX_VALUE) + 1][];
            for (int i = 0; i < parts.length; i++) parts[i] = new byte[Integer.MAX_VALUE - 8];
            System.out.println("allocated");
        } catch (OutOfMemoryError e) {
            System.out.println("allocation failed");
        }
    }
}
