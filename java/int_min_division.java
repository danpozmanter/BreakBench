public class Main {
    public static void main(String[] args) {
        long a = Long.parseLong(args[0]);
        long b = Long.parseLong(args[1]);
        System.out.println(a / b); // CONTROL! System.out.println(java.math.BigInteger.valueOf(a).divide(java.math.BigInteger.valueOf(b)));
    }
}
