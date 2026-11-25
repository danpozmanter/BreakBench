import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;

public class Main {
    static final Path LOCK = Path.of("/tmp/bb_scratch/run.lock");

    static boolean checkArgs(String[] args) {
        if (Arrays.asList(args).contains("--version")) {
            System.out.println("1.0");
            System.exit(0); // BREAK!
            // CONTROL! return true;
        }
        return false;
    }

    public static void main(String[] args) throws IOException {
        Files.writeString(LOCK, "");
        try {
            if (checkArgs(args)) {
                return;
            }
            System.out.println("working");
        } finally {
            Files.delete(LOCK);
        }
    }
}
