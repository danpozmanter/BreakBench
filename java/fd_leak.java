import java.io.FileInputStream;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws Exception {
        int n = Integer.parseInt(args[0]);
        Files.writeString(Path.of("/tmp/bb_fd.txt"), "x");
        for (int i = 0; i < n; i++) {
            FileInputStream f = new FileInputStream("/tmp/bb_fd.txt");
            f.read();
        }
        System.out.println("done");
    }
}
