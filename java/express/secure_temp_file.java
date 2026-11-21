// LEVEL: STD

import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws Exception {
        Path path = Files.createTempFile("bb", ".txt");
        Files.writeString(path, "ok");
        System.out.println(Files.readString(path));
        Files.delete(path);
    }
}
