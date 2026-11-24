import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    static void save(String path) throws IOException {
        Files.writeString(Path.of(path), "data");
    }

    public static void main(String[] args) {
        save("/dev/null/out.txt"); // BREAK!
        // CONTROL! try { save("/dev/null/out.txt"); } catch (IOException e) { }
        System.out.println("saved");
    }
}
