import java.util.Arrays;

public class Main {
    static class Rec {
        final byte[] data = new byte[4096];

        Rec() {
            Arrays.fill(data, (byte) 1);
        }
    }

    public static void main(String[] args) {
        long n = Long.parseLong(args[0]);
        long seen = 0;
        for (long i = 0; i < n; i++) {
            Rec rec = new Rec();
            seen += rec.data[0];
        }
        System.out.println(seen == n ? "done" : "lost");
    }
}
