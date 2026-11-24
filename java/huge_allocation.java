public class Main {
    public static void main(String[] args) throws Exception {
        long n = Long.parseLong(args[0]);
        // CONTROL! if (n > (1L << 30)) { System.out.println("too large"); return; }
        byte[] buf = new byte[(int) n];
        buf[buf.length - 1] = 1;
        System.out.println(buf.length);
    }
}
