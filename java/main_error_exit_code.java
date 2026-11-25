import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws IOException {
        String text;
        try {
            text = Files.readString(Path.of("/nonexistent/bb.conf"));
        } catch (IOException e) {
            System.err.println("config missing: " + e);
            return; // BREAK!
            // CONTROL! throw e;
        }
        System.out.println(text.length());
    }
}
