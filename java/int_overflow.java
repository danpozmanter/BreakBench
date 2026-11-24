public class Main {
    public static void main(String[] args) {
        long n = Long.parseLong(args[0]);
        System.out.println(n + 1); // CONTROL! System.out.println(java.math.BigInteger.valueOf(n).add(java.math.BigInteger.ONE));
    }
}
