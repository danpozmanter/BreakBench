// LEVEL: STD

import java.security.MessageDigest;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        byte[] a = new byte[16], b = new byte[16];
        Arrays.fill(a, (byte) 7);
        Arrays.fill(b, (byte) 7);
        System.out.println(MessageDigest.isEqual(a, b) ? "equal" : "different");
    }
}
