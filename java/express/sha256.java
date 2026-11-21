// LEVEL: STD

import java.security.MessageDigest;
import java.util.HexFormat;

public class Main {
    public static void main(String[] args) throws Exception {
        byte[] d = MessageDigest.getInstance("SHA-256").digest("abc".getBytes());
        System.out.println(HexFormat.of().formatHex(d));
    }
}
