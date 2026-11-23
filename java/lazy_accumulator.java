import java.io.FileInputStream;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        long count = Long.parseLong(args[0]);
        long total = 0;
        try (FileInputStream source = new FileInputStream("/dev/zero")) {
            for (long i = 0; i < count; i++) {
                byte[] message = source.readNBytes(4096);
                total += message.length;
            }
        }
        System.out.println(total);
    }
}
