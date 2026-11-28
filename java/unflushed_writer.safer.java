import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws IOException {
        Files.writeString(Path.of("/tmp/bb_report.txt"), "total=42\n");
    }
}
