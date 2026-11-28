import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        int claimed = Integer.parseInt(args[0]);
        byte[] buf = new byte[64];
        System.arraycopy("SECRET-KEY-0042".getBytes(StandardCharsets.US_ASCII), 0, buf, 2, 15);
        System.arraycopy("hi".getBytes(StandardCharsets.US_ASCII), 0, buf, 0, 2);
        byte[] payload = Arrays.copyOfRange(buf, 0, 2);
        // CONTROL! if (claimed > payload.length) { System.out.println("invalid"); return; }
        byte[] reply = Arrays.copyOfRange(payload, 0, claimed);
        System.out.println(new String(reply, StandardCharsets.US_ASCII));
    }
}
