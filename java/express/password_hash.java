// LEVEL: STD

import java.security.MessageDigest;
import java.security.SecureRandom;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public class Main {
    static byte[] derive(String password, byte[] salt) throws Exception {
        var spec = new PBEKeySpec(password.toCharArray(), salt, 600000, 256);
        return SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256").generateSecret(spec).getEncoded();
    }

    public static void main(String[] args) throws Exception {
        byte[] salt = new byte[16];
        new SecureRandom().nextBytes(salt);
        byte[] stored = derive("hunter2", salt);
        System.out.println(MessageDigest.isEqual(stored, derive("hunter2", salt)) + " "
                + MessageDigest.isEqual(stored, derive("wrong", salt)));
    }
}
