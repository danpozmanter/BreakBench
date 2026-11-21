public class Main {
    public static void main(String[] args) {
        int v = Integer.parseInt(args[0]);
        byte b = (byte) v;
        System.out.println(Byte.toUnsignedInt(b));
    }
}
