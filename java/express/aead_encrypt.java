// LEVEL: STD

import java.security.SecureRandom;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

public class Main {
    static byte[] run(int mode, SecretKey key, byte[] iv, byte[] data) throws Exception {
        Cipher c = Cipher.getInstance("AES/GCM/NoPadding");
        c.init(mode, key, new GCMParameterSpec(128, iv));
        return c.doFinal(data);
    }

    public static void main(String[] args) throws Exception {
        KeyGenerator gen = KeyGenerator.getInstance("AES");
        gen.init(256);
        SecretKey key = gen.generateKey();
        byte[] iv = new byte[12];
        new SecureRandom().nextBytes(iv);
        byte[] sealed = run(Cipher.ENCRYPT_MODE, key, iv, "secret".getBytes());
        System.out.println(new String(run(Cipher.DECRYPT_MODE, key, iv, sealed)));
        sealed[0] ^= 1;
        try {
            run(Cipher.DECRYPT_MODE, key, iv, sealed);
            System.out.println("accepted");
        } catch (AEADBadTagException e) {
            System.out.println("rejected");
        }
    }
}
