public class Main {
    public static void main(String[] args) {
        double x = Double.parseDouble(args[0]);
        long v = (long) x; // CONTROL! var v = java.math.BigDecimal.valueOf(x).toBigInteger();
        System.out.println(v);
    }
}
