// LEVEL: STD

import java.security.SecureRandom;
import java.util.HexFormat;

public class Main {
    public static void main(String[] args) {
        byte[] buf = new byte[16];
        new SecureRandom().nextBytes(buf);
        System.out.println(HexFormat.of().formatHex(buf));
    }
}
