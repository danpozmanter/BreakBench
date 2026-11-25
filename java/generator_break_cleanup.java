import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.stream.Stream;

public class Main {
    static final Path LOCK = Path.of("/tmp/bb_scratch/reader.lock");

    static Stream<String> rows() throws IOException {
        Files.writeString(LOCK, "");
        return Stream.of("alpha", "beta", "gamma").onClose(() -> {
            try {
                Files.delete(LOCK);
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        });
    }

    public static void main(String[] args) throws IOException {
        // The Stream documentation sends a stream that holds a resource to try-with-resources.
        try (Stream<String> rows = rows()) {
            for (String line : (Iterable<String>) rows::iterator) {
                System.out.println(line);
                break;
            }
        }
    }
}
