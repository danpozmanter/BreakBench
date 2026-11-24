public class Main {
    public static void main(String[] args) {
        int s = Integer.parseInt(args[0]);
        long one = 1;
        System.out.println(one << s); // CONTROL! System.out.println(java.math.BigInteger.ONE.shiftLeft(s));
    }
}
