public class Main {
    public static void main(String[] args) {
        int v = Integer.parseInt(args[0]);
        // CONTROL! if (v < 0 || v > 255) { System.out.println("out of range"); return; }
        byte b = (byte) v;
        System.out.println(Byte.toUnsignedInt(b));
    }
}
