import java.nio.charset.StandardCharsets;
import java.util.HexFormat;

public class Main {
    public static void main(String[] args) {
        byte[] session = new byte[64];
        byte[] secret = "SECRET-TOKEN".getBytes(StandardCharsets.US_ASCII);
        System.arraycopy(secret, 0, session, 32, secret.length);
        session = null;
        byte[] reply = new byte[64];
        System.out.println(HexFormat.of().formatHex(reply, 32, 44));
    }
}
