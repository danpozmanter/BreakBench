import java.nio.charset.StandardCharsets;

public class Main {
    public static void main(String[] args) {
        int[] counts = new int[256];
        for (byte b : args[0].getBytes(StandardCharsets.UTF_8)) {
            counts[b]++; // CONTROL! counts[Byte.toUnsignedInt(b)]++;
        }
        int high = 0;
        for (int i = 128; i < 256; i++) high += counts[i];
        System.out.println(high);
    }
}
