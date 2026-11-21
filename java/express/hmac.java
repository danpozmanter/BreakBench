// LEVEL: STD

import java.util.HexFormat;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class Main {
    public static void main(String[] args) throws Exception {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec("key".getBytes(), "HmacSHA256"));
        System.out.println(HexFormat.of().formatHex(mac.doFinal("The quick brown fox jumps over the lazy dog".getBytes())));
    }
}
