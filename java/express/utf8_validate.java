// LEVEL: STD

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.StandardCharsets;

public class Main {
    public static void main(String[] args) {
        try {
            StandardCharsets.UTF_8.newDecoder().decode(ByteBuffer.wrap(new byte[] {0x61, (byte) 0xFF}));
            System.out.println("valid");
        } catch (CharacterCodingException e) {
            System.out.println("invalid");
        }
    }
}
