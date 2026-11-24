public class Main {
    static final long SPAN = 1_000_000_000L * 60 * 60 * 24 * 365 * 300; // CONTROL! static final java.math.BigInteger SPAN = java.math.BigInteger.valueOf(1_000_000_000L * 60 * 60 * 24 * 365).multiply(java.math.BigInteger.valueOf(300));

    public static void main(String[] args) {
        System.out.println(SPAN);
    }
}
