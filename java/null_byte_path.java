import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws IOException {
        Files.createDirectories(Path.of("/tmp/bb_files"));
        Files.writeString(Path.of("/tmp/bb_files/report.txt"), "secret\n");

        String name = "report.txt\0.png";
        if (!name.endsWith(".png")) {
            System.out.println("rejected");
            return;
        }
        try {
            System.out.print(Files.readString(Path.of("/tmp/bb_files/" + name)));
        } catch (IOException | RuntimeException e) {
            System.out.println("rejected");
        }
    }
}
